#!/bin/bash
for f in $(aws s3 ls s3://velib-data | awk '{print $4}'); do
  if [[ $f == velib_dispo_* ]];
  then
    folder=$(echo $f | grep -Eo '[[:digit:]]{4}_[[:digit:]]{2}_[[:digit:]]{2}')
    aws s3 mv s3://velib-data/$f s3://velib-data/dispo_station/$folder/$f
  fi
done

