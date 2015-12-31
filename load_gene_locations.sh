#!/bin/bash -e

TABLE=_gene_locations_105

PGUSER=dbsnp psql snp <<EOF
DROP TABLE IF EXISTS $TABLE;
CREATE TABLE $TABLE(
entrez_id integer not null,
gene_name varchar(68) not null,
chr char(2) not null,
start integer not null,
"end" integer not null,
strand smallint
);
EOF

# we subtract 1 to make positions 0-based, like in dbsnp
zcat genome_release/seq_gene.md.gz | \
  awk -F $'\t' '{ sub(/\|.+/, "", $2); if ($13 == "GRCh37.p13-Primary Assembly" && $12 == "GENE") print $11 "\t" $10 "\t" $2 "\t" $3-1 "\t" $4-1 "\t" ($5 == "+" ? "1" : "-1")}' | \
  sed 's/^GeneID://' | \
  PGUSER=dbsnp psql snp -c "COPY $TABLE FROM STDIN WITH NULL ''"

PGUSER=dbsnp psql snp <<< "CREATE INDEX ON $TABLE(entrez_id);"
