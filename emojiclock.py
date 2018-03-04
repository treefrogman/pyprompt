#!/usr/bin/python
# -*- coding: utf-8 -*-

import datetime as dt
time = dt.datetime.now()

times = [
	"🕛",
	"🕧",
	"🕐",
	"🕜",
	"🕑",
	"🕝",
	"🕒",
	"🕞",
	"🕓",
	"🕟",
	"🕔",
	"🕠",
	"🕕",
	"🕡",
	"🕖",
	"🕢",
	"🕗",
	"🕣",
	"🕘",
	"🕤",
	"🕙",
	"🕥",
	"🕚",
	"🕦"
]

print times[ ( time.hour % 12 ) * 2 + ( time.minute + 15 ) / 30 ]
