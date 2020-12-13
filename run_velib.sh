#!/bin/bash
OPENDATA=~/MaiKeFaire/OpenData
SAVEDIR=$(date +'%Y_%m_%d')
/usr/local/bin/crawl_velib_dispo.py --data_dir $OPENDATA/data/velib/dispo_station/$SAVEDIR &>> $OPENDATA/logs/velib.log
#/usr/local/bin/crawl_velib_dispo.py --data_dir $OPENDATA/data > $OPENDATA/logs/velib.log
