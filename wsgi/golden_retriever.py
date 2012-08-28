#!/usr/bin/env python
# -*- coding: utf-8 -*-
'''
Created on 12 Aug 2012
@author: fradeve

NOTE: this is a spaghetti script to retrieve descriptive values only from Ark's SCR. Many features
may be implemented interacting with Ark's PHP files.

Assuming that an SCR entry is composed by key:value couples (e.g. 'State of conservation: good'),
this script will read all the available keys, map them into a Python dictionary, and use them
to fill in a Python template to create HTML output to display in OpenLayers' popup for each WFS feature.
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
        query the table cxt_tbl_cxt to match the selected record and get totalscr
        SCR number in scrinfodict
        '''
        query = 'SELECT * FROM ' + cxttblname + ' WHERE cxt_no=' + cxt_no + ' AND ste_cd="' + ste_cd + '";' 
        cur.execute(query)
        result = cur.fetchall()
        totalscr = cur.rowcount
        scrdict['totalscr'] = totalscr

        ## TEXT FRAGMENTS ##
        '''
        query the table cor_tbl_txt to extract all text information contained in the
        current SCR and populate scrdict
        '''
        query = 'SELECT txttype, txt FROM ' + tbltxtname + ' WHERE (itemvalue="' + scrdict['scrid'] + '" AND itemkey="cxt_cd");'
        cur.execute(query)
        rows = cur.fetchall()
        for row in rows:
            '''
            translations: an SCR record is managed using cxt_tbl_cxt but it's text
            fields values are in cor_tbl_txt, since they are text values; we'll
            filter translations using as parameters both the cor_tbl_txt.txttype
            and the cor_tbl_txt table name itself.
            SELECT alias FROM cor_tbl_alias WHERE (cor_tbl_alias.itemvalue=$cor_tbl_txt.txttype
                                                   AND itemkey="cor_lut_txttype");
            '''
            query = 'SELECT alias FROM cor_tbl_alias WHERE (cor_tbl_alias.language="' + scrdict['lang'] +'" AND cor_tbl_alias.itemvalue=' + str(row[0]) + ' AND itemkey="cor_lut_' + tbltxtname[8:] +'type");'
            cur.execute(query)
            translation = cur.fetchone()
            scrdict[translation[0]] = row[1]

        ## ATTRIBUTES ##

        ## ACTIONS ##

        ## TEMPLATE RENDERING ##
        scr_link = ark_path + '/micro_view.php?cxt_cd=' + scrdict['scrid'] + '&item_key=cxt_cd'
        scrdict['scr_link'] = scr_link

        template = jinja_env.get_template('poptemplate.html')
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
