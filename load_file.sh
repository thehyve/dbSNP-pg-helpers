#!/bin/bash -e

file=$1
echo "Doing $file"
table=${file%%.bcp.gz}
table=${table##*/}
if [[ $table == 'SubSNPSeq5_ins' ]]; then
  echo "Skip SubSNPSeq5_ins"
  exit 0
fi
if [[ $table == 'SubSNPSeq3_ins' ]]; then
  echo "Skip SubSNPSeq3_ins"
  exit 0
fi
echo "Doing $file"
zcat $file | perl -pe 's/\r/\\r/g' | psql snp -c "COPY $table FROM STDIN WITH NULL ''";
echo "Done $file"
