#!/bin/bash
SNCF=~/MaiKeFaire/SNCF

/usr/local/bin/crawl_trip.py --data_dir $SNCF/data --origin Paris --destination Annecy > $SNCF/logs/sncf.log
/usr/local/bin/crawl_trip.py --data_dir $SNCF/data --origin Annecy --destination Paris > $SNCF/logs/sncf.log
/usr/local/bin/crawl_trip.py --data_dir $SNCF/data --origin Paris --destination Auray  > $SNCF/logs/sncf.log
/usr/local/bin/crawl_trip.py --data_dir $SNCF/data --origin Auray --destination Paris  > $SNCF/logs/sncf.log
