CREATE TABLE Allele
(
allele_id SERIAL NOT NULL ,
allele varchar(1024) NOT NULL ,
create_time TIMESTAMP NOT NULL ,
rev_allele_id int NULL ,
src varchar(10) NULL ,
last_updated_time TIMESTAMP NULL ,
allele_left varchar(900) NULL
);
CREATE TABLE AlleleFlagCode
(
code smallint NOT NULL ,
abbrev varchar(12) NOT NULL ,
descrip varchar(255) NOT NULL ,
create_time TIMESTAMP NOT NULL
);
CREATE TABLE AlleleMotif
(
allele_id int NOT NULL ,
motif_order int NOT NULL ,
motif_id int NOT NULL ,
repeat_cnt real NOT NULL ,
create_time TIMESTAMP NOT NULL
);
CREATE TABLE AllocIds
(
name varchar(30) NOT NULL ,
id int NOT NULL ,
cycle int NULL ,
create_time TIMESTAMP NULL ,
last_updated_time TIMESTAMP NULL ,
"comment" varchar(255) NULL
);
CREATE TABLE Author
(
pub_id int NOT NULL ,
position smallint NOT NULL ,
author varchar(255) NOT NULL ,
create_time TIMESTAMP NULL ,
last_updated_time TIMESTAMP NULL
);
CREATE TABLE Batch_tax_id
(
batch_id int NOT NULL ,
tax_id int NOT NULL ,
update_time TIMESTAMP NOT NULL ,
asm_acc varchar(32) NULL ,
asm_version smallint NULL ,
pos_src_id int NULL ,
comment varchar(255) NULL
);
CREATE TABLE ChiSqPValueLookUp
(
df smallint NOT NULL ,
chisq_from float NOT NULL ,
chisq_to float NOT NULL ,
pvalue_upper_bound float NOT NULL
);
CREATE TABLE CpGCode
(
code smallint NOT NULL ,
abbrev varchar(12) NOT NULL ,
descrip varchar(255) NOT NULL
);
CREATE TABLE GenBankDivisionCode
(
code varchar(6) NOT NULL ,
abbrev varchar(40) NOT NULL ,
descrip varchar(255) NOT NULL ,
display_order smallint NOT NULL ,
create_time TIMESTAMP NOT NULL
);
CREATE TABLE GenderCode
(
code char(1) NOT NULL ,
gender varchar(6) NOT NULL
);
CREATE TABLE GtyAllele
(
gty_id int NOT NULL ,
rev_flag bit NOT NULL ,
chr_num smallint NOT NULL ,
fwd_allele_id int NOT NULL ,
unigty_id int NULL ,
create_time TIMESTAMP NOT NULL ,
last_updated_time TIMESTAMP NOT NULL
);
CREATE TABLE IUPACna
(
allele varchar(1) NOT NULL ,
meaning varchar(10) NOT NULL ,
bitcode varchar(4) NOT NULL ,
value smallint NOT NULL ,
rev_base char(1) NULL
);
CREATE TABLE LoadHistory
(
build_id int NOT NULL ,
loaddate TIMESTAMP NOT NULL ,
status char(30) NOT NULL ,
comments varchar(255) NULL ,
script varchar(255) NULL ,
ftp_done_date TIMESTAMP NULL ,
entrez_done_date TIMESTAMP NULL ,
blastdb_done_date TIMESTAMP NULL ,
web_date TIMESTAMP NULL
);
CREATE TABLE LocTypeCode
(
code smallint NOT NULL ,
abbrev varchar(12) NOT NULL ,
descrip varchar(255) NOT NULL ,
create_time TIMESTAMP NOT NULL
);
CREATE TABLE MapLinkCode
(
which_code varchar(20) NOT NULL ,
code smallint NOT NULL ,
abbr varchar(10) NULL ,
note varchar(255) NULL ,
create_time TIMESTAMP NULL ,
last_updated_time TIMESTAMP NULL
);
CREATE TABLE Method
(
method_id int NOT NULL ,
handle varchar(20) NOT NULL ,
loc_method_id varchar(64) NOT NULL ,
loc_method_id_upp varchar(64) NOT NULL ,
method_class smallint NULL ,
template_type smallint NULL ,
seq_both_strands varchar(3) NULL ,
mult_pcr_amplification varchar(3) NULL ,
mult_clones_tested varchar(3) NULL ,
create_time TIMESTAMP NULL ,
last_updated_time TIMESTAMP NULL
);
CREATE TABLE MethodClass
(
meth_class_id smallint NOT NULL ,
name varchar(64) NOT NULL ,
last_updated_time TIMESTAMP NOT NULL ,
validation_status smallint NOT NULL
);
CREATE TABLE MethodLine
(
method_id int NOT NULL ,
line_num smallint NOT NULL ,
line varchar(255) NOT NULL ,
create_time TIMESTAMP NULL ,
last_updated_time TIMESTAMP NULL
);
CREATE TABLE Moltype
(
code smallint NOT NULL ,
moltype varchar(10) NOT NULL ,
descrip varchar(255) NOT NULL
);
CREATE TABLE Motif
(
motif_id int NOT NULL ,
motif varchar(1024) NOT NULL ,
rev_motif_id int NULL ,
last_updated_time TIMESTAMP NULL ,
motif_left varchar(900) NULL
);
CREATE TABLE ObsGenotype
(
gty_id int NOT NULL ,
obs varchar(512) NOT NULL ,
obs_upp_fix varchar(512) NOT NULL ,
last_updated_time TIMESTAMP NOT NULL
);
CREATE TABLE ObsVariation
(
var_id int NOT NULL ,
pattern varchar(1024) NOT NULL ,
create_time TIMESTAMP NOT NULL ,
last_updated_time TIMESTAMP NULL ,
univar_id int NULL ,
var_flag smallint NULL ,
pattern_left varchar(900) NULL
);
CREATE TABLE OrgDbStatus
(
database_name varchar(32) NOT NULL ,
SNP_cnt int NULL ,
SubSNP_cnt int NULL ,
cluster_cnt int NULL ,
unmapped_rs_cnt int NULL ,
SubInd_cnt int NULL ,
ind_cnt int NULL ,
SubInd_ss_cnt int NULL ,
SubPop_cnt int NULL ,
pop_cnt int NULL ,
SubPop_ss_cnt int NULL ,
GtyFreqBySsPop_ss_cnt int NULL ,
AlleleFreqBySsPop_ss_cnt int NULL ,
SNPGtyFreq_rs_cnt int NULL ,
SNPAlleleFreq_rs_cnt int NULL ,
snp_build_max int NULL ,
genome_build_max varchar(8) NULL ,
map_time TIMESTAMP NULL ,
cluster_time_max TIMESTAMP NULL ,
create_time TIMESTAMP NULL ,
last_SNPBatch_time TIMESTAMP NULL ,
last_POPBatch_time TIMESTAMP NULL ,
last_INDBatch_time TIMESTAMP NULL ,
rsMax int NULL ,
rsMissenseMax int NULL ,
copy2FTP_time TIMESTAMP NULL
);
CREATE TABLE OrganismTax
(
organism varchar(128) NOT NULL ,
tax_id int NOT NULL ,
common_name varchar(36) NULL ,
gpipe_abbr varchar(7) NOT NULL ,
create_time TIMESTAMP NOT NULL ,
last_updated_time TIMESTAMP NOT NULL ,
comment varchar(255) NULL ,
division_cd varchar(6) NULL ,
database_name varchar(32) NOT NULL ,
short_common_name varchar(32) NOT NULL ,
tax_id_rank varchar(6) NOT NULL ,
species_tax_id int NOT NULL ,
no_freq_summary bit NULL ,
entrez_index smallint NULL ,
pub_genome_build decimal NULL ,
pub_build_id int NULL
);
CREATE TABLE PopClass
(
pop_id int NOT NULL ,
pop_class_id int NOT NULL ,
snp_count int NULL
);
CREATE TABLE PopClassCode
(
pop_class_id int NOT NULL ,
pop_class char(50) NOT NULL ,
pop_class_text char(255) NOT NULL
);
CREATE TABLE Publication
(
pub_id int NOT NULL ,
pmid int NULL ,
handle varchar(20) NOT NULL ,
meduid int NULL ,
title varchar(235) NOT NULL ,
journal varchar(255) NULL ,
vol varchar(255) NULL ,
suppl varchar(128) NULL ,
issue varchar(128) NULL ,
i_suppl varchar(128) NULL ,
pages varchar(255) NULL ,
year smallint NOT NULL ,
status smallint NOT NULL ,
blobflag smallint NULL ,
last_updated TIMESTAMP NOT NULL ,
create_time TIMESTAMP NULL ,
last_updated_time TIMESTAMP NULL
);
CREATE TABLE SNPGlossary
(
term varchar(256) NOT NULL ,
description varchar(4000) NULL ,
last_updated TIMESTAMP NULL ,
used_in varchar(32) NULL
);
CREATE TABLE SNP_tax_id
(
snp_id int NOT NULL ,
tax_id int NULL ,
update_time TIMESTAMP NULL ,
status char(1) NULL
);
CREATE TABLE SnpChrCode
(
code varchar(8) NOT NULL ,
abbrev varchar(20) NOT NULL ,
descrip varchar(255) NOT NULL ,
create_time TIMESTAMP NOT NULL ,
sort_order smallint NULL ,
db_name varchar(32) NULL ,
NC_acc varchar(16) NULL
);
CREATE TABLE SnpClassCode
(
code smallint NOT NULL ,
abbrev varchar(20) NOT NULL ,
descrip varchar(255) NOT NULL ,
display_str varchar(255) NULL
);
CREATE TABLE SnpFunctionCode
(
code smallint NOT NULL ,
abbrev varchar(20) NOT NULL ,
descrip varchar(255) NOT NULL ,
create_time TIMESTAMP NOT NULL ,
top_level_class char(5) NOT NULL ,
is_coding smallint NOT NULL ,
is_exon bit NULL ,
var_prop_effect_code int NULL ,
var_prop_gene_loc_code int NULL ,
SO_id varchar(32) NULL
);
CREATE TABLE SnpValidationCode
(
code smallint NOT NULL ,
abbrev varchar(64) NOT NULL ,
descrip varchar(255) NOT NULL ,
create_time TIMESTAMP NULL ,
last_updated_time TIMESTAMP NULL
);
CREATE TABLE StrandCode
(
code smallint NOT NULL ,
abbrev varchar(20) NOT NULL ,
rs_to_ss_orien bit NOT NULL ,
descrip varchar(255) NOT NULL ,
create_time TIMESTAMP NOT NULL
);
CREATE TABLE SubSNPDelComm
(
comment_id smallint NOT NULL ,
comment varchar(400) NULL ,
create_time TIMESTAMP NULL
);
CREATE TABLE SubSNPSeqTypeCode
(
code smallint NOT NULL ,
abbrev varchar(20) NOT NULL ,
descrip varchar(255) NOT NULL
);
CREATE TABLE Submitter
(
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
CREATE TABLE TemplateType
(
temp_type_id smallint NOT NULL ,
name varchar(64) NOT NULL ,
last_updated_time TIMESTAMP NOT NULL
);
CREATE TABLE UniGty
(
unigty_id int NOT NULL ,
gty_str varchar(255) NULL ,
allele_id_1 int NOT NULL ,
allele_id_2 int NULL ,
create_time TIMESTAMP NOT NULL
);
CREATE TABLE UniVariAllele
(
univar_id int NOT NULL ,
allele_id int NOT NULL ,
create_time TIMESTAMP NOT NULL
);
CREATE TABLE UniVariation
(
univar_id int NOT NULL ,
var_str varchar(1024) NULL ,
allele_cnt smallint NOT NULL ,
subsnp_class smallint NOT NULL ,
iupack_code char(1) NOT NULL ,
top_or_bot_strand char(1) NOT NULL ,
create_time TIMESTAMP NOT NULL ,
last_updated_time TIMESTAMP NOT NULL ,
src_code smallint NULL ,
rev_univar_id int NULL ,
var_str_left varchar(900) NULL
);
CREATE TABLE UniVariationSrcCode
(
code smallint NOT NULL ,
abbrev varchar(20) NOT NULL ,
descrip varchar(255) NOT NULL
);
CREATE TABLE VariAllele
(
var_id int NOT NULL ,
allele_id int NOT NULL ,
create_time TIMESTAMP NOT NULL
);
CREATE TABLE db_ftp_table_list
(
table_name varchar(32) NOT NULL ,
db_str varchar(64) NOT NULL ,
create_time TIMESTAMP NULL
);
CREATE TABLE db_map_table_name
(
table_name varchar(32) NOT NULL ,
to_index bit NULL ,
isCurrent char(1) NULL ,
inHuman char(1) NULL ,
inNonHuman char(1) NOT NULL ,
inFtpDump bit NULL
);
CREATE TABLE dn_Allele_rev
(
allele_id int NOT NULL ,
rev_flag smallint NOT NULL ,
fwd_allele_id int NOT NULL ,
fwd_allele varchar(1024) NOT NULL
);
CREATE TABLE dn_Motif_rev
(
motif_id int NOT NULL ,
rev_flag smallint NOT NULL ,
fwd_motif varchar(1024) NULL ,
fwd_motif_id int NULL
);
CREATE TABLE dn_UniGty_allele
(
unigty_id int NOT NULL ,
chr_num smallint NOT NULL ,
allele_id int NOT NULL ,
create_time TIMESTAMP NOT NULL
);
CREATE TABLE dn_UniGty_rev
(
unigty_id int NOT NULL ,
rev_flag smallint NOT NULL ,
fwd_unigty_id int NOT NULL ,
fwd_gty_str varchar(255) NULL
);
CREATE TABLE dn_UniVariation_rev
(
univar_id int NOT NULL ,
rev_flag smallint NOT NULL ,
fwd_univar_id int NULL ,
fwd_univar_str varchar(900) NULL
);
CREATE TABLE dn_baseFlip
(
base char(1) NULL ,
rev_flag smallint NULL ,
fwd_base char(1) NULL
);
CREATE TABLE dn_gty2unigty_trueSNP
(
gty_id int NOT NULL ,
rev_flag bit NOT NULL ,
unigty_id int NULL ,
obs varchar(512) NOT NULL ,
gty_str varchar(255) NULL
);
CREATE TABLE dn_summary
(
tax_id int NOT NULL ,
build_id int NOT NULL ,
type varchar(20) NOT NULL ,
cnt int NOT NULL ,
create_time TIMESTAMP NOT NULL ,
last_updated_time TIMESTAMP NOT NULL
);
