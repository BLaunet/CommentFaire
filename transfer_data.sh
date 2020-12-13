#!/bin/bash
aws s3 sync /home/ec2-user/MaiKeFaire/OpenData/data/velib/dispo_station s3://maikefaire-data/dispo_velib && rm -r ~/MaiKeFaire/OpenData/data/velib/dispo_station/*
aws s3 sync /home/ec2-user/MaiKeFaire/Trainline/data s3://maikefaire-data/trainline/data && rm -r ~/MaiKeFaire/Trainline/data/*
