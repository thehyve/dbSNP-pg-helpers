#!/bin/bash -e

DIR=$1

for f in $(find "$DIR" -type f -iname '*.bcp.gz' -printf '%h/%f\n' |sort); do
  table=${f%%.bcp.gz}
  table=${table##*/}
echo "truncating $table"
  psql snp <<< "truncate $table"
echo "truncated $table"
  sem -j8 ./load_file.sh $f
done
sem --wait
