#!/bin/sh
cp shift-jis.py shift-jis.py.original
iconv -f SHIFT-JIS -t UTF-8 shift-jis.py > shift-jis.py.tmp
mv shift-jis.py.tmp shift-jis.py