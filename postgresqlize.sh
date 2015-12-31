#!/bin/bash

for a in *.sql.gz; do /mnt/data/input/armstrong-dnsnp/utils/mssql_psql_conversion.pl <(zcat ${a}) > ${a%%.sql}_psql.sql; done
