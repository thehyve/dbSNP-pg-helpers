#!/bin/bash -e

FILE=$1

while read l; do
  echo "Run $l"
  sem -j10 PGUSER=dbsnp psql snp <<< "$l"
done < $FILE
sem --wait
