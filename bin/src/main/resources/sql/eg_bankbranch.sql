CREATE TABLE eg_bankbranch (
  id bigint NOT NULL,
  branchcode character varying(50) NOT NULL,
  branchname character varying(50) NOT NULL,
  branchaddress1 character varying(50) NOT NULL,
  branchaddress2 character varying(50),
  branchcity character varying(50),
  branchstate character varying(50),
  branchpin character varying(50),
  branchphone character varying(15),
  branchfax character varying(15),
  bankid bigint,
  contactperson character varying(50),
  active boolean NOT NULL,
  createdby bigint,
  createddate date,
  lastmodifiedby bigint,
  lastmodifieddate date,
  CONSTRAINT pk_eg_bankbranch_id PRIMARY KEY (id),
  CONSTRAINT fk_eg_bankbranch_bankid FOREIGN KEY (bankid)
      REFERENCES eg_bank (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT uk_eg_bankbranch_bankid_branchname UNIQUE (bankid, branchname)
);

ALTER TABLE eg_bankbranch OWNER TO postgres;

CREATE SEQUENCE seq_eg_bankbranch INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 100 CACHE 1;
ALTER TABLE seq_eg_bankbranch OWNER TO postgres;


insert into eg_bankbranch values (nextval('seq_eg_bankbranch'), 'MARW001', 'SBI, Marwari Road', '01, Marwari Road', null, 'Bhopal', 'MP', 'MARW001', '0755-5454545', '0755-5454545', 1, 'Neelesh', true, 54, current_timestamp, 54, current_timestamp);
insert into eg_bankbranch values (nextval('seq_eg_bankbranch'), 'PEER005', 'SBI, Peergate', '01, Peergate', null, 'Bhopal', 'MP', 'PEER005', '0755-5454545', '0755-5454545', 2, 'Neelesh', true, 54, current_timestamp, 54, current_timestamp);

