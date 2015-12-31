CREATE TABLE hyve_snp_likely_gene AS
SELECT snp_id, locus_symbol, locus_id FROM (
  SELECT snp_id, locus_symbol, locus_id, rank() OVER(PARTITION BY snp_id ORDER BY count(locus_id), locus_id DESC) as rank
  FROM b146_snpcontiglocusid_105
  GROUP BY snp_id, locus_id, locus_symbol) A
WHERE rank = 1;

CREATE INDEX ON hyve_snp_likely_gene(snp_id);
