CREATE TABLE egeis_assignment (
  id bigint NOT NULL,
  positionname character varying(18),
  fund character varying(10),
  functionary character varying(90),
  function character varying(180),
  designationcode character varying(18),
  departmentcode character varying(18),
  isprimary boolean NOT NULL,
  fromdate date,
  todate date,
  gradename character varying(18),
  govtOrderNumber character varying(18),
  documents bytea,
  createdby bigint,
  createddate timestamp without time zone,
  lastmodifiedby bigint,
  lastmodifieddate timestamp without time zone,
  CONSTRAINT pk_egeis_assignment_id PRIMARY KEY (id),
  CONSTRAINT fk_egeis_assignment_position FOREIGN KEY (positionname)
      REFERENCES egeis_position (name) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_egeis_assignment_designation FOREIGN KEY (designationcode)
      REFERENCES egeis_designation (code) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_egeis_assignment_department FOREIGN KEY (departmentcode)
      REFERENCES egeis_department (code) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_egeis_assignment_grade FOREIGN KEY (gradename)
      REFERENCES egeis_grade (name) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);

ALTER TABLE egeis_assignment OWNER TO postgres;

CREATE SEQUENCE seq_egeis_assignment INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;
ALTER TABLE seq_egeis_assignment OWNER TO postgres;


insert into egeis_assignment values (nextval('seq_egeis_assignment'), 'Acc_MGR', '2500000', null, null, 'ACT01', 'ACC01', true, current_timestamp, '2018-01-01', 'A', null, null, 53, current_timestamp, 52, current_timestamp);
insert into egeis_assignment values (nextval('seq_egeis_assignment'), 'Acc_ASS', '7500000', null, null, 'ASSTACT01', 'ACC01', true, current_timestamp, '2018-01-01', 'B', null, null, 53, current_timestamp, 52, current_timestamp);
insert into egeis_assignment values (nextval('seq_egeis_assignment'), 'DEV_MGR', '5000000', null, null, 'PROJMGR01', 'DEVPT01', true, current_timestamp, '2018-01-01', 'C', null, null, 53, current_timestamp, 52, current_timestamp);
