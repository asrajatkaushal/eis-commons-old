CREATE TABLE egeis_employee_language (
  employeecode character varying(25) NOT NULL,
  languageid bigint NOT NULL,
  CONSTRAINT fk_egeis_employee_language_languageid FOREIGN KEY (languageid)
      REFERENCES eg_language (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_egeis_employee_language_employeecode FOREIGN KEY (employeecode)
      REFERENCES egeis_employee (code) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);

ALTER TABLE egeis_employee_language OWNER TO postgres;


insert into egeis_employee_language values ('EGOV_E1', 1);
insert into egeis_employee_language values ('EGOV_E1', 2);
insert into egeis_employee_language values ('EGOV_E2', 3);
insert into egeis_employee_language values ('EGOV_E2', 4);
insert into egeis_employee_language values ('EGOV_E2', 1);
insert into egeis_employee_language values ('EGOV_E3', 2);
insert into egeis_employee_language values ('EGOV_E4', 3);