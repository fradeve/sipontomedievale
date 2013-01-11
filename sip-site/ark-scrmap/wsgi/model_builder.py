#!/usr/bin/env python
# -*- coding: utf-8 -*-
'''
Created on 13 Oct 2012
@author: fradeve

This module needs the python-jinja2 package to be installed
'''

import sys
import string
import cgi
import cgitb
from jinja2 import Template, Environment, FileSystemLoader

cgitb.enable(display=0, logdir="/tmp")
import cgi

jinja_env = Environment(loader=FileSystemLoader('templates'))

def getModelHtml(modelValues):
    try:
        ## TEMPLATE RENDERING ##
  
        valuesDict = {
                        "filename" : str(modelValues['filename'].value),
                        "name" : str(modelValues['name'].value),
                        "state" : str(modelValues['state'].value),
                        "description" : str(modelValues['desc'].value),
                        "material" : str(modelValues['mat'].value),
                        "from" : str(modelValues['from'].value)
                     }

        template = jinja_env.get_template('modeltemplate.html')
        print "Content-Type: text/html\n"
        print template.render(valuesDict)
    except:
        print 'Error'

modelValues = cgi.FieldStorage()
getModelHtml(modelValues)
