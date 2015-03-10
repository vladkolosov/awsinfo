#!/usr/bin/python

from subprocess import check_output
from json2html import *

output = check_output('./awsinfo.sh', shell = True)

info = json2html.convert(json = output)

template = open('template.html', 'r')
html = template.read()
template.close()

html = html % info

print html
