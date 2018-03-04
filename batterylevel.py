#!/usr/bin/python
# -*- coding: utf-8 -*-
import os

def batterylevel():
	profile = os.popen( "ioreg -r -c AppleSmartBattery", 'r' ).read()

	for line in profile.split( "\n" ):
		if 'CurrentCapacity' in line:
			curline = line
		elif 'MaxCapacity' in line:
			maxline = line
		elif 'ExternalChargeCapable' in line:
			chgline = line


	chg = { "Yes": "⚡", "No": "%" }[ chgline.split( " " )[ -1 ] ]
	cur = int( curline.split( " " )[ -1 ] )
	max = int( maxline.split( " " )[ -1 ] )

	# eighths = [
	# 	"0",
	# 	"⅛",
	# 	"¼",
	# 	"⅜",
	# 	"½",
	# 	"⅝",
	# 	"¾",
	# 	"⅞"
	# ]
	# print chg + eighths[ ( ( 16 * cur / max ) - 1 ) / 2 ]

	return chg + str( 100 * cur / max )
