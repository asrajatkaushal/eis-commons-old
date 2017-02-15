CREATE TABLE egeis_department (
  id bigint NOT NULL,
  name character varying(64) NOT NULL,
  code character varying(18),
  active boolean,
  CONSTRAINT pk_egeis_department_id PRIMARY KEY (id),
  CONSTRAINT uk_egeis_department_name UNIQUE (name),
  CONSTRAINT uk_egeis_department_code UNIQUE (code)
);

ALTER TABLE egeis_department OWNER TO postgres;

CREATE SEQUENCE seq_egeis_department INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;
ALTER TABLE seq_egeis_department OWNER TO postgres;


insert into egeis_department values (nextval('seq_egeis_department'), 'Accounts', 'ACC01', true);
insert into egeis_department values (nextval('seq_egeis_department'), 'Development', 'DEVPT01', true);
insert into egeis_department values (nextval('seq_egeis_department'), 'Management', 'MGMT01', true);
insert into egeis_department values (nextval('seq_egeis_department'), 'Testing', 'TEST01', false);
insert into egeis_department values (nextval('seq_egeis_department'), 'Finance', 'FIN01', false);
