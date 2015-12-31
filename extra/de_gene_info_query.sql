COPY (
    SELECT
        TN.gene_id,
        TN.gene_symbol,
        TN.gene_name,
        LOC.chr,
        LOC.start AS chrom_start,
        LOC.end as chrom_stop,
        LOC.strand
    FROM
    geneidtoname TN
    -- some genes don't have locations (e.g. https://www.ncbi.nlm.nih.gov/gene/170532 )
    LEFT JOIN _gene_locations_105 LOC ON LOC.entrez_id = TN.gene_id
    ORDER BY entrez_id)
TO '/mnt/data/out/de_gene_info_GRCh37p13.tsv'
CSV DELIMITER E'\t' FORCE QUOTE *;
