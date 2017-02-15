CREATE TABLE egeis_employee_type (
  id bigint NOT NULL,
  name character varying(90),
  chartofaccounts bigint,
  CONSTRAINT pk_egeis_employee_type_id PRIMARY KEY (id),
  CONSTRAINT uk_egeis_employee_type_name UNIQUE (name)
);

ALTER TABLE egeis_employee_type OWNER TO postgres;

CREATE SEQUENCE seq_egeis_employee_type INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 52 CACHE 1;
ALTER TABLE seq_egeis_employee_type OWNER TO postgres;


insert into egeis_employee_type values (nextval('seq_egeis_employee_type'), 'Permanent', null);
insert into egeis_employee_type values (nextval('seq_egeis_employee_type'), 'Temporary', null);
