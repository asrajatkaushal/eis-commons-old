CREATE TABLE egeis_designation (
  id bigint NOT NULL,
  name character varying(45) NOT NULL,
  code character varying(18),
  description character varying(256),
  chartofaccounts  character varying(18),
  active boolean,

  CONSTRAINT pk_egeis_designation_id PRIMARY KEY (id),
  CONSTRAINT uk_egeis_designation_name UNIQUE (name),
  CONSTRAINT uk_egeis_designation_code UNIQUE (code)
);

ALTER TABLE egeis_designation OWNER TO postgres;

CREATE SEQUENCE seq_egeis_designation INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;
ALTER TABLE seq_egeis_designation OWNER TO postgres;


insert into egeis_designation values (nextval('seq_egeis_designation'), 'Accountant', 'ACT01', null, null, true);
insert into egeis_designation values (nextval('seq_egeis_designation'), 'Developer', 'DEVPR01', null, null, true);
insert into egeis_designation values (nextval('seq_egeis_designation'), 'HR Manager', 'HRMGR01', null, null, true);
insert into egeis_designation values (nextval('seq_egeis_designation'), 'Manual Tester', 'MANTSTR01', null, null, false);
insert into egeis_designation values (nextval('seq_egeis_designation'), 'Assistant Accountant', 'ASSTACT01', null, null, true);
insert into egeis_designation values (nextval('seq_egeis_designation'), 'Associate Developer', 'ASSODEVPR01', null, null, true);
insert into egeis_designation values (nextval('seq_egeis_designation'), 'Project Manager', 'PROJMGR01', null, null, true);
insert into egeis_designation values (nextval('seq_egeis_designation'), 'Automation Tester', 'AUTOTSTR01', null, null, false);
insert into egeis_designation values (nextval('seq_egeis_designation'), 'Finance Officer', 'FINOFCR01', null, null, false);
