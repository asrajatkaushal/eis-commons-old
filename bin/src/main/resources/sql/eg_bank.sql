CREATE TABLE eg_bank (
  id bigint NOT NULL,
  code character varying(50) NOT NULL,
  name character varying(100) NOT NULL,
  narration character varying(250),
  active boolean NOT NULL,
  type character varying(50),
  createdby bigint,
  createddate date,
  lastmodifiedby bigint,
  lastmodifieddate date,
  CONSTRAINT pk_eg_bank_id PRIMARY KEY (id),
  CONSTRAINT uk_eg_bank_code UNIQUE (code),
  CONSTRAINT uk_eg_bank_name UNIQUE (name)
);

ALTER TABLE eg_bank OWNER TO postgres;

CREATE SEQUENCE seq_eg_bank INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;
ALTER TABLE seq_eg_bank OWNER TO postgres;


insert into eg_bank values (nextval('seq_eg_bank'), 'SBI', 'State Bank Of India', null, true, 'PUBLIC', 52, current_timestamp, 52, current_timestamp);
insert into eg_bank values (nextval('seq_eg_bank'), 'HDFC', 'HDFC Bank', null, true, 'PUBLIC', 52, current_timestamp, 52, current_timestamp);
insert into eg_bank values (nextval('seq_eg_bank'), 'UBI', 'Union Bank Of India', null, true, 'PUBLIC', 52, current_timestamp, 52, current_timestamp);
