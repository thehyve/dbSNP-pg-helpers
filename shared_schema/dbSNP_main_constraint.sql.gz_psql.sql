ALTER TABLE Allele ALTER COLUMN create_time SET DEFAULT NOW();
ALTER TABLE Allele ALTER COLUMN last_updated_time SET DEFAULT NOW();
ALTER TABLE Allele ADD CONSTRAINT pk_Allele  PRIMARY KEY  (allele_id);
ALTER TABLE AlleleFlagCode ADD CONSTRAINT pk_AlleleFlagCode  PRIMARY KEY  (code);
ALTER TABLE AlleleMotif ADD CONSTRAINT pk_AlleleMotif  PRIMARY KEY  (allele_id,motif_order);
ALTER TABLE AllocIds ADD CONSTRAINT pk_AllocIds  PRIMARY KEY  (name);
ALTER TABLE Author ADD CONSTRAINT pk_Author  PRIMARY KEY  (pub_id,position);
ALTER TABLE Batch_tax_id ADD CONSTRAINT FK__Batch_tax__pos_s__2013436E FOREIGN KEY (pos_src_id) REFERENCES BatchAssertedPositionSourceId(pos_src_id);
ALTER TABLE CpGCode ADD CONSTRAINT pk_CpGCode  PRIMARY KEY  (code);
ALTER TABLE GtyAllele ADD CONSTRAINT pk_GtyAllele  PRIMARY KEY  (gty_id,rev_flag,chr_num);
ALTER TABLE IUPACna ADD CONSTRAINT pk_IUPACna  PRIMARY KEY  (allele);
ALTER TABLE LoadHistory ADD CONSTRAINT pk_LoadHistory  PRIMARY KEY  (build_id);
ALTER TABLE LocTypeCode ALTER COLUMN create_time SET DEFAULT NOW();
ALTER TABLE LocTypeCode ADD CONSTRAINT pk_LocTypeCode  PRIMARY KEY  (code);
ALTER TABLE MapLinkCode ADD CONSTRAINT pk_MapLinkCode  PRIMARY KEY  (which_code,code);
ALTER TABLE Method ADD CONSTRAINT pk_Method_mid  PRIMARY KEY  (method_id);
ALTER TABLE MethodClass ADD CONSTRAINT pk_MethodClass  PRIMARY KEY  (meth_class_id);
ALTER TABLE MethodLine ADD CONSTRAINT pk_MethodLine  PRIMARY KEY  (method_id,line_num);
ALTER TABLE Moltype ADD CONSTRAINT pk_Moltype  PRIMARY KEY  (code);
ALTER TABLE Motif ADD CONSTRAINT pk_Motif  PRIMARY KEY  (motif_id);
ALTER TABLE ObsGenotype ADD CONSTRAINT pk_ObsGenotype  PRIMARY KEY  (gty_id);
ALTER TABLE ObsVariation ALTER COLUMN create_time SET DEFAULT NOW();
ALTER TABLE ObsVariation ALTER COLUMN last_updated_time SET DEFAULT NOW();
ALTER TABLE ObsVariation ADD CONSTRAINT pk_ObsVariation  PRIMARY KEY  (var_id);
ALTER TABLE OrgDbStatus ADD CONSTRAINT pk_org_db_status  PRIMARY KEY  (database_name);
ALTER TABLE OrganismTax ADD CONSTRAINT pk_organism  PRIMARY KEY  (tax_id);
ALTER TABLE PopClass ADD CONSTRAINT pk_PopClass  PRIMARY KEY  (pop_id,pop_class_id);
ALTER TABLE PopClassCode ADD CONSTRAINT PK__PopClassCode__270595B6  PRIMARY KEY  (pop_class_id);
ALTER TABLE Publication ADD CONSTRAINT pk_Publication  PRIMARY KEY  (pub_id);
ALTER TABLE SNPGlossary ALTER COLUMN last_updated SET DEFAULT NOW();
ALTER TABLE SNPGlossary ADD CONSTRAINT pk_SNPGlossary  PRIMARY KEY  (term);
ALTER TABLE SNP_tax_id ALTER COLUMN status SET DEFAULT 'C';
ALTER TABLE SNP_tax_id ADD CONSTRAINT pk_SNP_tax_id  PRIMARY KEY  (snp_id);
ALTER TABLE SnpChrCode ADD CONSTRAINT pk_SnpChrCode  PRIMARY KEY  (code);
ALTER TABLE SnpClassCode ADD CONSTRAINT pk_SnpClassCode  PRIMARY KEY  (code);
ALTER TABLE SnpFunctionCode ADD CONSTRAINT pk_SnpFunctionCode  PRIMARY KEY  (code);
ALTER TABLE SnpValidationCode ADD CONSTRAINT pk_SnpValidationCode  PRIMARY KEY  (code);
ALTER TABLE StrandCode ADD CONSTRAINT pk_StrandCode  PRIMARY KEY  (code);
ALTER TABLE Submitter ALTER COLUMN create_time SET DEFAULT NOW();
ALTER TABLE Submitter ADD CONSTRAINT pk_Submitter  PRIMARY KEY  (handle);
ALTER TABLE TemplateType ADD CONSTRAINT pk_TemplateType  PRIMARY KEY  (temp_type_id);
ALTER TABLE UniGty ADD CONSTRAINT pk_UniGty  PRIMARY KEY  (unigty_id);
ALTER TABLE UniVariAllele ADD CONSTRAINT pk_UniVariAllele  PRIMARY KEY  (univar_id,allele_id);
ALTER TABLE UniVariation ADD CONSTRAINT pk_UniVariation  PRIMARY KEY  (univar_id);
ALTER TABLE UniVariationSrcCode ADD CONSTRAINT pk_UniVariationSrcCode  PRIMARY KEY  (code);
ALTER TABLE VariAllele ADD CONSTRAINT pk_VariAllele  PRIMARY KEY  (var_id,allele_id);
ALTER TABLE db_ftp_table_list ALTER COLUMN create_time SET DEFAULT NOW();
ALTER TABLE db_ftp_table_list ADD CONSTRAINT pk_db_ftp_table_list  PRIMARY KEY  (table_name);
ALTER TABLE db_map_table_name ALTER COLUMN inNonHuman SET DEFAULT 'N';
ALTER TABLE db_map_table_name ADD CONSTRAINT pk_db_map_table_name  PRIMARY KEY  (table_name);
ALTER TABLE dn_Allele_rev ADD CONSTRAINT pk_dn_Allele_rev  PRIMARY KEY  (allele_id,rev_flag);
ALTER TABLE dn_Motif_rev ADD CONSTRAINT pk_dn_Motif_rev  PRIMARY KEY  (motif_id,rev_flag);
ALTER TABLE dn_UniGty_allele ADD CONSTRAINT pk_dn_UniGty_allele  PRIMARY KEY  (unigty_id,chr_num);
ALTER TABLE dn_UniGty_rev ADD CONSTRAINT pk_dn_Gty_rev  PRIMARY KEY  (unigty_id,rev_flag);
ALTER TABLE dn_UniVariation_rev ADD CONSTRAINT pk_dn_UniVariation_rev  PRIMARY KEY  (univar_id,rev_flag);
ALTER TABLE dn_summary ALTER COLUMN create_time SET DEFAULT NOW();
ALTER TABLE dn_summary ALTER COLUMN last_updated_time SET DEFAULT NOW();
ALTER TABLE dn_summary ADD CONSTRAINT pk_dn_summary  PRIMARY KEY  (tax_id,build_id,type);
