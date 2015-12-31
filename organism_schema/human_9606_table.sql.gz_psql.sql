CREATE TABLE AlleleFreqBySsPop
(
subsnp_id int NOT NULL ,
pop_id int NOT NULL ,
allele_id int NOT NULL ,
source varchar(2) NOT NULL ,
cnt real NULL ,
freq real NULL ,
last_updated_time TIMESTAMP NOT NULL
);
CREATE TABLE Batch
(
batch_id int NOT NULL ,
handle varchar(20) NOT NULL ,
loc_batch_id varchar(64) NOT NULL ,
loc_batch_id_upp varchar(64) NOT NULL ,
batch_type char(3) NOT NULL ,
status smallint NULL ,
simul_sts_status smallint NOT NULL ,
moltype varchar(8) NOT NULL ,
method_id int NOT NULL ,
samplesize int NULL ,
synonym_type varchar(255) NULL ,
submitted_time TIMESTAMP NOT NULL ,
linkout_url varchar(255) NULL ,
pop_id int NULL ,
last_updated_time TIMESTAMP NULL ,
success_rate_int int NULL ,
build_id int NULL ,
tax_id int NOT NULL ,
ss_cnt int NULL
);
CREATE TABLE BatchCita
(
batch_id int NOT NULL ,
position int NOT NULL ,
pub_id int NOT NULL ,
citation varchar(255) NOT NULL ,
create_time TIMESTAMP NULL ,
last_updated_time TIMESTAMP NULL
);
CREATE TABLE BatchCommLine
(
batch_id int NOT NULL ,
line_num smallint NOT NULL ,
line varchar(255) NOT NULL ,
create_time TIMESTAMP NULL ,
last_updated_time TIMESTAMP NULL
);
CREATE TABLE BatchCultivar
(
batch_id int NOT NULL ,
line_num smallint NOT NULL ,
line varchar(255) NULL ,
create_time TIMESTAMP NULL ,
last_updated_time TIMESTAMP NULL
);
CREATE TABLE BatchMeExLine
(
batch_id int NOT NULL ,
line_num smallint NOT NULL ,
line varchar(255) NOT NULL ,
create_time TIMESTAMP NULL ,
last_updated_time TIMESTAMP NULL
);
CREATE TABLE BatchStrain
(
batch_id int NOT NULL ,
line_num smallint NOT NULL ,
line varchar(255) NOT NULL ,
create_time TIMESTAMP NULL ,
last_updated_time TIMESTAMP NULL
);
CREATE TABLE BatchValCode
(
batch_id int NOT NULL ,
validation_status smallint NOT NULL
);
CREATE TABLE ClinSigCode
(
code int NOT NULL ,
abbrev varchar(64) NULL ,
descrip varchar(255) NULL ,
create_time TIMESTAMP NULL ,
last_updated_time TIMESTAMP NULL ,
severity_level smallint NOT NULL
);
CREATE TABLE Contact
(
batch_id int NOT NULL ,
handle varchar(20) NOT NULL ,
name varchar(255) NOT NULL ,
fax varchar(255) NULL ,
phone varchar(255) NULL ,
email varchar(255) NULL ,
lab varchar(255) NULL ,
institution varchar(255) NULL ,
address varchar(255) NULL ,
create_time TIMESTAMP NULL ,
last_updated_time TIMESTAMP NULL
);
CREATE TABLE FreqSummaryBySsPop
(
subsnp_id int NOT NULL ,
pop_id int NOT NULL ,
source varchar(1) NOT NULL ,
chr_cnt float NULL ,
ind_cnt float NULL ,
non_founder_ind_cnt int NOT NULL ,
chisq float NULL ,
df int NULL ,
hwp float NOT NULL ,
het int NULL ,
het_se int NULL ,
last_updated_time TIMESTAMP NOT NULL
);
CREATE TABLE GeneIdToName
(
gene_id int NOT NULL ,
gene_symbol varchar(64) NOT NULL ,
gene_name varchar(255) NULL ,
gene_type varchar(255) NULL ,
tax_id int NOT NULL ,
last_update_time TIMESTAMP NOT NULL ,
ref_tax_id int NOT NULL ,
dbSNP_tax_id int NOT NULL ,
ins_time TIMESTAMP NULL
);
CREATE TABLE GtyFreqBySsPop
(
subsnp_id int NOT NULL ,
pop_id int NOT NULL ,
unigty_id int NOT NULL ,
source varchar(1) NULL ,
cnt real NULL ,
freq real NULL ,
last_updated_time TIMESTAMP NOT NULL
);
CREATE TABLE IndGrpCode
(
code smallint NOT NULL ,
name varchar(32) NOT NULL ,
descrip varchar(255) NOT NULL
);
CREATE TABLE IndivBySource
(
ind_id int NOT NULL ,
src_id int NOT NULL ,
src_ind_id varchar(64) NOT NULL ,
create_time TIMESTAMP NOT NULL ,
src_ind_grp varchar(64) NULL
);
CREATE TABLE IndivSourceCode
(
code int NOT NULL ,
name varchar(22) NOT NULL ,
descrip varchar(255) NULL ,
create_time TIMESTAMP NOT NULL ,
src_type varchar(10) NULL ,
display_order smallint NULL
);
CREATE TABLE Individual
(
ind_id int NOT NULL ,
descrip varchar(255) NULL ,
create_time TIMESTAMP NOT NULL ,
tax_id int NULL ,
ind_grp smallint NULL
);
CREATE TABLE OmimVarLocusIdSNP
(
omim_id int NOT NULL ,
locus_id int NULL ,
omimvar_id char(4) NULL ,
locus_symbol char(10) NULL ,
var1 char(20) NULL ,
aa_position int NULL ,
var2 char(20) NULL ,
var_class int NOT NULL ,
snp_id int NOT NULL
);
CREATE TABLE Pedigree
(
ped_id numeric NOT NULL ,
curator varchar(12) NOT NULL ,
curator_ped_id varchar(12) NOT NULL ,
create_time TIMESTAMP NOT NULL
);
CREATE TABLE PedigreeIndividual
(
ped_id decimal NOT NULL ,
ind_id int NOT NULL ,
ma_ind_id int NULL ,
pa_ind_id int NULL ,
sex char(1) NULL ,
create_time TIMESTAMP NOT NULL
);
CREATE TABLE PopLine
(
pop_id int NOT NULL ,
line_num int NOT NULL ,
line varchar(255) NOT NULL ,
create_time TIMESTAMP NULL ,
last_updated_time TIMESTAMP NULL
);
CREATE TABLE PopMandLine
(
pop_id int NOT NULL ,
line_num smallint NOT NULL ,
line varchar(255) NOT NULL ,
create_time TIMESTAMP NULL ,
last_updated_time TIMESTAMP NULL
);
CREATE TABLE Population
(
pop_id int NOT NULL ,
handle varchar(20) NOT NULL ,
loc_pop_id varchar(64) NOT NULL ,
loc_pop_id_upp varchar(64) NOT NULL ,
create_time TIMESTAMP NULL ,
last_updated_time TIMESTAMP NULL ,
src_id int NULL
);
CREATE TABLE RsMergeArch
(
rsHigh int NOT NULL ,
rsLow int NOT NULL ,
build_id int NULL ,
orien smallint NULL ,
create_time TIMESTAMP NOT NULL ,
last_updated_time TIMESTAMP NOT NULL ,
rsCurrent int NULL ,
orien2Current smallint NULL ,
comment varchar(255) NULL
);
CREATE TABLE SNP
(
snp_id int NULL ,
avg_heterozygosity real NULL ,
het_se real NULL ,
create_time TIMESTAMP NULL ,
last_updated_time TIMESTAMP NULL ,
CpG_code smallint NULL ,
tax_id int NULL ,
validation_status smallint NULL ,
exemplar_subsnp_id int NOT NULL ,
univar_id int NULL ,
cnt_subsnp int NULL ,
map_property smallint NULL
);
CREATE TABLE SNP3D
(
snp_id int NOT NULL ,
protein_acc char(50) NOT NULL ,
master_gi int NOT NULL ,
neighbor_gi int NOT NULL ,
aa_position int NOT NULL ,
var_res char(100) NOT NULL ,
contig_res char(3) NOT NULL ,
neighbor_res char(3) NOT NULL ,
neighbor_pos int NOT NULL ,
var_color int NOT NULL ,
var_label int NOT NULL
);
CREATE TABLE SNPAlleleFreq
(
snp_id int NOT NULL ,
allele_id int NOT NULL ,
chr_cnt float NULL ,
freq float NULL ,
last_updated_time TIMESTAMP NOT NULL
);
CREATE TABLE SNPAlleleFreq_TGP
(
snp_id int NULL ,
allele_id int NOT NULL ,
freq float NULL ,
count int NULL ,
is_minor_allele int NULL
);
CREATE TABLE SNPAncestralAllele
(
snp_id int NOT NULL ,
ancestral_allele_id int NOT NULL ,
batch_id int NOT NULL
);
CREATE TABLE SNPClinSig
(
hgvs_g varchar(255) NULL ,
snp_id int NULL ,
tested char(1) NULL ,
clin_sig_id int NOT NULL ,
upd_time TIMESTAMP NOT NULL ,
clin_sig_id_by_rs int NOT NULL
);
CREATE TABLE SNPGtyFreq
(
snp_id int NOT NULL ,
unigty_id int NOT NULL ,
ind_cnt float NULL ,
freq float NULL ,
last_updated_time TIMESTAMP NOT NULL
);
CREATE TABLE SNPHWProb
(
snp_id int NOT NULL ,
df smallint NULL ,
chisq real NULL ,
hwp real NULL ,
ind_cnt smallint NULL ,
last_updated_time TIMESTAMP NULL
);
CREATE TABLE SNPHistory
(
snp_id int NOT NULL ,
create_time TIMESTAMP NULL ,
last_updated_time TIMESTAMP NOT NULL ,
history_create_time TIMESTAMP NULL ,
comment varchar(255) NULL ,
reactivated_time TIMESTAMP NULL
);
CREATE TABLE SNPPubmed
(
snp_id int NULL ,
subsnp_id int NULL ,
pubmed_id int NULL ,
type varchar(16) NULL ,
score int NOT NULL ,
upd_time TIMESTAMP NOT NULL
);
CREATE TABLE SNPSubSNPLink
(
subsnp_id int NULL ,
snp_id int NULL ,
substrand_reversed_flag smallint NULL ,
create_time TIMESTAMP NULL ,
last_updated_time TIMESTAMP NULL ,
build_id int NULL ,
comment varchar(255) NULL
);
CREATE TABLE SNPSubSNPLinkHistory
(
subsnp_id int NULL ,
snp_id int NULL ,
build_id int NULL ,
history_create_time TIMESTAMP NOT NULL ,
link_create_time TIMESTAMP NULL ,
link_last_updated_time TIMESTAMP NULL ,
orien smallint NULL ,
build_id_when_history_made int NULL ,
comment varchar(255) NULL
);
CREATE TABLE SNPSuspect
(
snp_id int NOT NULL ,
reason_code int NULL ,
upd_time TIMESTAMP NULL
);
CREATE TABLE SNPVal
(
batch_id int NOT NULL ,
snp_id int NOT NULL
);
CREATE TABLE SNP_HGVS
(
hgvs_name varchar(300) NULL ,
snp_id int NULL
);
CREATE TABLE SNP_bitfield
(
snp_id int NOT NULL ,
ver_code smallint NULL ,
link_prop_b1 smallint NULL ,
link_prop_b2 smallint NULL ,
gene_prop_b1 smallint NULL ,
gene_prop_b2 smallint NULL ,
map_prop smallint NULL ,
freq_prop smallint NULL ,
gty_prop smallint NULL ,
hapmap_prop smallint NULL ,
pheno_prop smallint NULL ,
variation_class smallint NOT NULL ,
quality_check smallint NULL ,
upd_time TIMESTAMP NOT NULL ,
encoding bytea NULL
);
CREATE TABLE SubPop
(
batch_id int NOT NULL ,
subsnp_id int NOT NULL ,
pop_id int NOT NULL ,
type char(3) NOT NULL ,
samplesize int NOT NULL ,
submitted_strand_code smallint NULL ,
submitted_rs int NULL ,
allele_flag smallint NULL ,
ambiguity_status smallint NULL ,
sub_heterozygosity real NULL ,
est_heterozygosity real NULL ,
est_het_se_sq real NULL ,
last_updated_time TIMESTAMP NOT NULL ,
observed varchar(1000) NULL ,
sub_het_se_sq real NULL ,
subpop_id SERIAL NOT NULL
);
CREATE TABLE SubPopAllele
(
batch_id int NOT NULL ,
subsnp_id int NOT NULL ,
pop_id int NOT NULL ,
allele char(1) NOT NULL ,
other varchar(255) NULL ,
freq real NULL ,
cnt_int int NULL ,
freq_min real NULL ,
freq_max real NULL ,
data_src varchar(6) NULL ,
type char(3) NULL ,
last_updated_time TIMESTAMP NULL ,
allele_flag smallint NULL ,
cnt real NULL ,
allele_id int NULL ,
subpop_id int NOT NULL
);
CREATE TABLE SubPopGty
(
subpop_id int NOT NULL ,
gty_id int NOT NULL ,
gty_str varchar(255) NULL ,
cnt real NULL ,
freq real NULL ,
last_updated_time TIMESTAMP NOT NULL
);
CREATE TABLE SubSNP
(
subsnp_id int NOT NULL ,
known_snp_handle varchar(20) NULL ,
known_snp_loc_id varchar(64) NULL ,
known_snp_loc_id_upp varchar(64) NULL ,
batch_id int NOT NULL ,
loc_snp_id varchar(64) NULL ,
loc_snp_id_upp varchar(64) NULL ,
synonym_names varchar(255) NULL ,
loc_sts_id varchar(64) NULL ,
loc_sts_id_upp varchar(64) NULL ,
segregate char(1) NOT NULL ,
indiv_homozygosity_detected char(1) NULL ,
PCR_confirmed_ind char(1) NULL ,
gene_name varchar(64) NULL ,
sequence_len int NULL ,
samplesize int NULL ,
EXPRESSED_SEQUENCE_ind char(1) NULL ,
SOMATIC_ind char(1) NULL ,
sub_locus_id int NULL ,
create_time TIMESTAMP NULL ,
last_updated_time TIMESTAMP NULL ,
ancestral_allele varchar(255) NULL ,
CpG_code smallint NULL ,
variation_id int NULL ,
top_or_bot_strand char(1) NULL ,
validation_status smallint NULL ,
snp_id int NULL ,
tax_id int NOT NULL ,
chr_id smallint NULL
);
CREATE TABLE SubSNPAcc_ins
(
subsnp_id int NOT NULL ,
acc_type_ind char(1) NOT NULL ,
acc_part varchar(16) NOT NULL ,
acc_ver int NULL
);
CREATE TABLE SubSNPCommLine_ins
(
subsnp_id int NOT NULL ,
line_num smallint NOT NULL ,
line varchar(255) NOT NULL
);
CREATE TABLE SubSNPHGVS
(
subsnp_id int NOT NULL ,
sub_hgvs_c varchar(255) NULL ,
sub_hgvs_g varchar(255) NULL ,
sub_hgvs_p varchar(255) NULL ,
cal_hgvs_c varchar(255) NULL ,
cal_hgvs_g varchar(255) NULL ,
cal_hgvs_p varchar(255) NULL ,
upd_time TIMESTAMP NULL ,
gene_id int NULL
);
CREATE TABLE SubSNPLinkout
(
subsnp_id int NOT NULL ,
url_val varchar(255) NOT NULL ,
updated_time TIMESTAMP NULL ,
link_type varchar(3) NOT NULL
);
CREATE TABLE SubSNPMdFailLn
(
subsnp_id int NOT NULL ,
line_num smallint NOT NULL ,
line varchar(255) NOT NULL
);
CREATE TABLE SubSNPNoVariSeq
(
subsnp_id int NOT NULL ,
line_num smallint NOT NULL ,
line varchar(255) NOT NULL
);
CREATE TABLE SubSNPOmim
(
);
CREATE TABLE SubSNPPubmed
(
subsnp_id int NOT NULL ,
line_num int NOT NULL ,
pubmed_id int NOT NULL ,
updated_time TIMESTAMP NULL
);
CREATE TABLE SubSNPSeq3_ins
(
subsnp_id int NOT NULL ,
type smallint NOT NULL ,
line_num smallint NOT NULL ,
line varchar(255) NOT NULL
);
CREATE TABLE SubSNPSeq5_ins
(
subsnp_id int NOT NULL ,
type smallint NOT NULL ,
line_num smallint NOT NULL ,
line varchar(255) NOT NULL
);
CREATE TABLE SubSNPSeqPos
(
subsnp_id int NOT NULL ,
contig_acc varchar(20) NOT NULL ,
contig_pos int NOT NULL ,
chr varchar(2) NULL ,
upstream_len int NOT NULL ,
downstream_len int NOT NULL ,
last_update_time TIMESTAMP NOT NULL ,
mrna_acc varchar(24) NULL
);
CREATE TABLE SubSNP_top_or_bot
(
subsnp_id int NOT NULL ,
top_or_bot char(1) NULL ,
step smallint NULL ,
last_updated_time TIMESTAMP NULL
);
CREATE TABLE SubmittedIndividual
(
submitted_ind_id int NOT NULL ,
pop_id int NOT NULL ,
loc_ind_id_upp varchar(64) NOT NULL ,
ind_id int NULL ,
create_time TIMESTAMP NOT NULL ,
last_updated_time TIMESTAMP NULL ,
tax_id int NOT NULL ,
loc_ind_alias varchar(64) NULL ,
loc_ind_id varchar(64) NULL ,
loc_ind_grp varchar(64) NULL ,
ploidy smallint NULL
);
CREATE TABLE SuspectReasonCode
(
code int NOT NULL ,
abbrev varchar(64) NULL ,
descrip varchar(255) NULL ,
create_time TIMESTAMP NULL ,
last_update_time TIMESTAMP NULL
);
CREATE TABLE Synonym
(
subsnp_id int NOT NULL ,
type varchar(64) NOT NULL ,
name varchar(64) NULL
);
CREATE TABLE b146_ContigInfo_105
(
ctg_id int NOT NULL ,
tax_id int NOT NULL ,
contig_acc varchar(32) NOT NULL ,
contig_ver smallint NOT NULL ,
contig_name varchar(63) NULL ,
contig_chr varchar(32) NULL ,
contig_start int NULL ,
contig_end int NULL ,
orient smallint NULL ,
contig_gi int NOT NULL ,
group_term varchar(32) NULL ,
group_label varchar(32) NULL ,
contig_label varchar(32) NULL ,
primary_fl smallint NOT NULL ,
genbank_gi int NULL ,
genbank_acc varchar(32) NULL ,
genbank_ver smallint NULL ,
build_id int NOT NULL ,
build_ver int NOT NULL ,
last_updated_time TIMESTAMP NOT NULL ,
placement_status smallint NOT NULL ,
asm_acc varchar(32) NOT NULL ,
asm_version smallint NOT NULL ,
chr_gi int NULL ,
par_fl smallint NULL ,
top_level_fl smallint NOT NULL ,
gen_rgn varchar(32) NULL ,
contig_length int NULL
);
CREATE TABLE b146_MapLinkInfo_105
(
gi bigint NOT NULL ,
accession varchar(32) NOT NULL ,
accession_ver smallint NOT NULL ,
acc varchar(32) NOT NULL ,
version smallint NOT NULL ,
status varchar(32) NULL ,
create_dt TIMESTAMP NULL ,
update_dt TIMESTAMP NULL ,
cds_from int NULL ,
cds_to int NULL
);
CREATE TABLE b146_MapLink_105
(
snp_type char(2) NULL ,
snp_id int NULL ,
gi int NULL ,
accession_how_cd smallint NULL ,
"offset" int NULL ,
asn_to int NULL ,
lf_ngbr int NULL ,
rf_ngbr int NULL ,
lc_ngbr int NULL ,
rc_ngbr int NULL ,
loc_type smallint NULL ,
build_id int NOT NULL ,
process_time TIMESTAMP NULL ,
process_status smallint NULL ,
orientation smallint NULL ,
allele varchar(1024) NULL ,
aln_quality float NULL ,
num_mism int NULL ,
num_del int NULL ,
num_ins int NULL ,
tier int NULL ,
ctg_gi int NULL ,
ctg_from int NULL ,
ctg_to int NULL ,
ctg_orient smallint NULL ,
source varchar(64) NULL
);
CREATE TABLE b146_ProteinInfo_105
(
gi bigint NOT NULL ,
acc varchar(32) NOT NULL ,
version smallint NOT NULL ,
prot_gi bigint NOT NULL ,
prot_acc varchar(32) NOT NULL ,
prot_ver smallint NOT NULL ,
status varchar(32) NULL ,
create_dt TIMESTAMP NULL ,
update_dt TIMESTAMP NULL
);
CREATE TABLE b146_SNPChrPosOnRef_105
(
snp_id int NOT NULL ,
chr varchar(32) NOT NULL ,
pos int NULL ,
orien int NULL ,
neighbor_snp_list int NULL ,
isPAR varchar(1) NOT NULL
);
CREATE TABLE b146_SNPContigLoc_105
(
snp_type varchar(2) NULL ,
snp_id int NULL ,
ctg_id int NULL ,
asn_from int NULL ,
asn_to int NULL ,
lf_ngbr int NULL ,
rf_ngbr int NULL ,
lc_ngbr int NULL ,
rc_ngbr int NULL ,
loc_type smallint NULL ,
phys_pos_from int NULL ,
snp_bld_id int NOT NULL ,
last_updated_time TIMESTAMP NULL ,
process_status smallint NULL ,
orientation smallint NULL ,
allele varchar(1024) NULL ,
loc_sts_uid int NULL ,
aln_quality real NULL ,
num_mism int NULL ,
num_del int NULL ,
num_ins int NULL ,
tier smallint NULL
);
CREATE TABLE b146_SNPContigLocusId_105
(
snp_id int NULL ,
contig_acc varchar(32) NOT NULL ,
contig_ver smallint NULL ,
asn_from int NULL ,
asn_to int NULL ,
locus_id int NULL ,
locus_symbol varchar(64) NULL ,
mrna_acc varchar(32) NOT NULL ,
mrna_ver smallint NOT NULL ,
protein_acc varchar(32) NULL ,
protein_ver smallint NULL ,
fxn_class int NULL ,
reading_frame int NULL ,
allele varchar(1000) NULL ,
residue varchar(341) NULL ,
aa_position int NULL ,
build_id varchar(4) NOT NULL ,
ctg_id int NULL ,
mrna_start int NULL ,
mrna_stop int NULL ,
codon varchar(1000) NULL ,
protRes char(3) NULL ,
contig_gi int NULL ,
mrna_gi int NULL ,
mrna_orien int NULL ,
cp_mrna_ver int NULL ,
cp_mrna_gi int NULL ,
verComp int NULL
);
CREATE TABLE b146_SNPMapInfo_105
(
snp_type varchar(2) NOT NULL ,
snp_id int NULL ,
chr_cnt int NOT NULL ,
contig_cnt int NOT NULL ,
loc_cnt int NOT NULL ,
weight int NOT NULL ,
hap_cnt int NULL ,
placed_cnt int NOT NULL ,
unlocalized_cnt int NOT NULL ,
unplaced_cnt int NOT NULL ,
aligned_cnt int NOT NULL ,
md5 char(32) NULL ,
asm_acc varchar(32) NULL ,
asm_version smallint NULL ,
assembly varchar(32) NULL
);
CREATE TABLE b146_SNP_bitfield_105
(
snp_id int NOT NULL ,
ver_code smallint NULL ,
link_prop_b1 smallint NULL ,
link_prop_b2 smallint NULL ,
gene_prop_b1 smallint NULL ,
gene_prop_b2 smallint NULL ,
map_prop smallint NULL ,
freq_prop smallint NULL ,
gty_prop smallint NULL ,
hapmap_prop smallint NULL ,
pheno_prop smallint NULL ,
variation_class smallint NOT NULL ,
quality_check smallint NULL ,
upd_time TIMESTAMP NOT NULL ,
encoding bytea NULL
);
CREATE TABLE dn_IND_batchCount
(
batch_id int NOT NULL ,
pop_id int NOT NULL ,
ss_cnt int NOT NULL ,
rs_cnt int NOT NULL ,
ind_cnt int NOT NULL ,
create_time TIMESTAMP NOT NULL
);
CREATE TABLE dn_IND_batch_pop
(
batch_id smallint NOT NULL ,
pop_id int NOT NULL ,
update_time TIMESTAMP NOT NULL
);
CREATE TABLE dn_PopulationIndGrp
(
pop_id int NOT NULL ,
ind_grp_name varchar(32) NOT NULL ,
ind_grp_code smallint NOT NULL
);
CREATE TABLE dn_batchCount
(
batch_id int NOT NULL ,
ss_cnt int NOT NULL ,
rs_cnt int NOT NULL ,
rs_validated_cnt int NOT NULL ,
create_time TIMESTAMP NOT NULL ,
pop_cnt int NULL ,
ind_cnt int NULL
);
CREATE TABLE dn_handleCount
(
handle varchar(20) NOT NULL ,
batch_type char(3) NOT NULL ,
ss_cnt int NOT NULL ,
rs_cnt int NULL ,
rs_validated_cnt int NULL ,
create_time TIMESTAMP NOT NULL
);
CREATE TABLE dn_snpFxnCnt
(
build_id int NOT NULL ,
fxn_class smallint NULL ,
snp_cnt int NOT NULL ,
gene_cnt int NOT NULL ,
create_time TIMESTAMP NOT NULL ,
last_updated_time TIMESTAMP NOT NULL ,
tax_id int NOT NULL
);
CREATE TABLE dn_table_rowcount
(
tabname varchar(64) NOT NULL ,
row_cnt int NOT NULL ,
build_id int NOT NULL ,
update_time TIMESTAMP NOT NULL ,
rows_in_spaceused int NULL ,
reserved_KB_spaceused int NULL ,
data_KB_spaceused int NULL ,
index_size_KB_spaceused int NULL ,
unused_KB_spaceused int NULL
);
