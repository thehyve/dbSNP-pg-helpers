#!/bin/bash -e

set -x

#rsync -rvP --include 'organism_**' --exclude '**' rsync://ftp.ncbi.nlm.nih.gov/snp/organisms/human_9606/database/ .
rsync -rvP --exclude '*.old' --include 'organism_**' --exclude '**' rsync://ftp.ncbi.nlm.nih.gov/snp/organisms/human_9606_b146_GRCh37p13/database/ .
rsync -rvP rsync://ftp.ncbi.nlm.nih.gov/snp/database/shared_data .
rsync -rvP rsync://ftp.ncbi.nlm.nih.gov/snp/database/shared_schema .

# not dbsnp, but we need this for gene locations
rsync -rvp --include seq_gene.md.gz --exclude '*' rsync://ftp.ncbi.nih.gov/genomes/MapView/Homo_sapiens/sequence/ANNOTATION_RELEASE.105/initial_release/ genome_release/
