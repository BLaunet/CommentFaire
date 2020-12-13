#!/bin/bash
TRAINLINE=~/MaiKeFaire/Trainline

/usr/local/bin/crawl_trip.py --data_dir $TRAINLINE/data --origin Paris --destination Auray --debug DEBUG |& tee -a $TRAINLINE/logs/paris_auray.log
/usr/local/bin/crawl_trip.py --data_dir $TRAINLINE/data --origin Auray --destination Paris --debug DEBUG |& tee -a $TRAINLINE/logs/auray_paris.log
/usr/local/bin/crawl_trip.py --data_dir $TRAINLINE/data --origin Paris --destination Annecy --debug DEBUG |& tee -a $TRAINLINE/logs/paris_annecy.log
/usr/local/bin/crawl_trip.py --data_dir $TRAINLINE/data --origin Annecy --destination Paris --debug DEBUG |& tee -a $TRAINLINE/logs/annecy_paris.log
/usr/local/bin/crawl_trip.py --data_dir $TRAINLINE/data --origin Paris --destination "La Rochelle" --debug DEBUG |& tee -a $TRAINLINE/logs/paris_larochelle.log
/usr/local/bin/crawl_trip.py --data_dir $TRAINLINE/data --origin "La Rochelle" --destination Paris --debug DEBUG |& tee -a $TRAINLINE/logs/larochelle_paris.log
/usr/local/bin/crawl_trip.py --data_dir $TRAINLINE/data --origin Paris --destination Nantes --debug DEBUG |& tee -a $TRAINLINE/logs/paris_nantes.log
/usr/local/bin/crawl_trip.py --data_dir $TRAINLINE/data --origin Nantes --destination Paris --debug DEBUG |& tee -a $TRAINLINE/logs/nantes_paris.log


