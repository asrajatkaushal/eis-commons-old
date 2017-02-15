CREATE TABLE egeis_deptdesig (
  id bigint NOT NULL,
  departmentid character varying(18) NOT NULL,
  designationid character varying(18) NOT NULL,

  CONSTRAINT pk_egeis_deptdesig_id PRIMARY KEY (id),
  CONSTRAINT fk_egeis_deptdesig_departmentid FOREIGN KEY (departmentid)
      REFERENCES egeis_department (code) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_egeis_deptdesig_designationid FOREIGN KEY (designationid)
      REFERENCES egeis_designation (code) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);

ALTER TABLE egeis_deptdesig OWNER TO postgres;

CREATE SEQUENCE seq_egeis_deptdesig INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;
ALTER TABLE seq_egeis_deptdesig OWNER TO postgres;


insert into egeis_deptdesig values (nextval('seq_egeis_deptdesig'), 'ACC01', 'ACT01');
insert into egeis_deptdesig values (nextval('seq_egeis_deptdesig'), 'ACC01', 'ASSTACT01');
insert into egeis_deptdesig values (nextval('seq_egeis_deptdesig'), 'DEVPT01', 'DEVPR01');
insert into egeis_deptdesig values (nextval('seq_egeis_deptdesig'), 'DEVPT01', 'ASSODEVPR01');
insert into egeis_deptdesig values (nextval('seq_egeis_deptdesig'), 'MGMT01', 'HRMGR01');
insert into egeis_deptdesig values (nextval('seq_egeis_deptdesig'), 'MGMT01', 'PROJMGR01');
insert into egeis_deptdesig values (nextval('seq_egeis_deptdesig'), 'TEST01', 'MANTSTR01');
insert into egeis_deptdesig values (nextval('seq_egeis_deptdesig'), 'TEST01', 'AUTOTSTR01');
insert into egeis_deptdesig values (nextval('seq_egeis_deptdesig'), 'FIN01', 'FINOFCR01');
