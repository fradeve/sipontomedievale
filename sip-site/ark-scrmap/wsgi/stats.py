#!/usr/bin/env python
# -*- coding: utf-8 -*-
'''
Created on 12 Aug 2012
@author: fradeve
'''

import MySQLdb as mdb
import sys
import string
import cgi
import cgitb
from jinja2 import Template, Environment, FileSystemLoader

cgitb.enable()
import cgi

jinja_env = Environment(loader=FileSystemLoader('templates'))
ark_path = 'http://46.105.19.68/ark'

'''
create a dictionary that will handle SCR metadata that are not recognized as
values in Ark's cor_lut_txttype table
TODO: scrid should be changed dinamically to fit the current pgsql scr id
TODO: insert scrinfodict as subdictionary into scrdict
'''

def getArkValues(gotscr):
    try:
        #def getArkValues(gotscr, host='localhost', user='root', passwd='archeologi', db='ark'):
        #con = mdb.connect("host='%s', user='%s', passwd='%s', db='%s'" %(host,user,passwd,db))
        con = mdb.connect(host='localhost', user='root', passwd='archeologi', db='ark')
        cur = con.cursor()
        '''
        create the dictionary that will handle SCR keys/values that matches with
        cor_lut_txttype
        '''
        scrdict = {'scrid' : gotscr, 'lang' : 'en'}

        '''
        here all table names
        '''
        cxttblname = 'cxt_tbl_cxt'
        tbltxtname = 'cor_tbl_txt'

        '''
        obtain values to query the table from scrid; we can't get it from
        cxt_tbl_cxt.cxt_cd since the same code may be used elsewhere in
        tables and may generate errors
        '''
        scrid_sep = string.find(scrdict['scrid'], "_")
        ste_cd = scrdict['scrid'][0:scrid_sep]
        cxt_no = scrdict['scrid'][scrid_sep+1:]

        ## GENERAL INFO ##
        '''
        query the table cxt_tbl_cxt to match the selected site code and get totalscr
        SCR number in scrinfodict
        '''
        query = 'SELECT * FROM ' + cxttblname + ' WHERE ste_cd="' + ste_cd + '";' 
        cur.execute(query)
        result = cur.fetchall()
        scrdict['totalscr'] = cur.rowcount

        ## TEMPLATE RENDERING ##
        template = jinja_env.get_template('stats.html')
        print "Content-Type: text/html\n"
        print template.render(scrdict)
    except:
        print 'Error'
    finally:
        con.close()


'''
probably can write a macro to generate a template starting from the dictionary,
and fill in the template using the following function
'''
querystring = cgi.FieldStorage()
gotscr = querystring.getfirst('scr',False)
getArkValues(gotscr)
