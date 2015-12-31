COPY (SELECT
    'rs' || POS.snp_id AS RS_ID,
    POS.chr AS CHROM,
    POS.pos AS POS,
    ALL_REF.allele AS REF,
    ALL_ALT.allele AS ALT,
    CASE
        WHEN GENE.locus_id IS NOT NULL THEN GENE.locus_symbol || ':' || GENE.locus_id
        ELSE NULL
    END AS GENE_INFO,
    SNP_CLASS.abbrev AS VARIATION_CLASS,
    CASE WHEN POS.orien = 0 THEN '+' ELSE '-' END AS STRAND,
    
    19 AS HG_VERSION,
    GENE.locus_symbol AS GENE_NAME,
    GENE.locus_id AS ENTREZ_ID
    
FROM b146_snpchrposonref_105 POS

LEFT JOIN snpallelefreq_tgp TGP_REF ON POS.snp_id = TGP_REF.snp_id AND TGP_REF.is_minor_allele = 0
LEFT JOIN allele ALL_REF ON ALL_REF.allele_id = TGP_REF.allele_id

LEFT JOIN snpallelefreq_tgp TGP_ALT ON POS.snp_id = TGP_ALT.snp_id AND TGP_ALT.is_minor_allele = 1
LEFT JOIN allele ALL_ALT ON ALL_ALT.allele_id = TGP_ALT.allele_id

LEFT JOIN b146_snp_bitfield_105 SNP_BF ON POS.snp_id = SNP_BF.snp_id
LEFT JOIN snpclasscode SNP_CLASS ON SNP_CLASS.code = SNP_BF.variation_class

LEFT JOIN hyve_snp_likely_gene GENE ON POS.snp_id = GENE.snp_id
WHERE POS.chr NOT IN ('NotOn', 'AltOnly', 'Un')
)
TO '/mnt/data/out/de_rc_snp_info_b146_GRCh37p13.tsv'
CSV DELIMITER E'\t' FORCE QUOTE *
