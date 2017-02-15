CREATE TABLE egeis_hod_department (
  id bigint NOT NULL,
  department bigint NOT NULL,
  CONSTRAINT pk_egeis_hod_department_id PRIMARY KEY (id),
  CONSTRAINT fk_egeis_hod_department_department FOREIGN KEY (department)
      REFERENCES egeis_department (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);

ALTER TABLE egeis_hod_department OWNER TO postgres;

CREATE SEQUENCE seq_egeis_hod_department INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1000 CACHE 1;
ALTER TABLE seq_egeis_hod_department OWNER TO postgres;


insert into egeis_hod_department values (nextval('seq_egeis_hod_department'), 1);
insert into egeis_hod_department values (nextval('seq_egeis_hod_department'), 2);
