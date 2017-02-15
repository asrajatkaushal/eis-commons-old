CREATE TABLE egeis_recruitment_type (
  id bigint NOT NULL,
  name character varying(256) NOT NULL,
  CONSTRAINT pk_egeis_recruiment_type_id PRIMARY KEY (id),
  CONSTRAINT uk_egeis_recruiment_type_name UNIQUE (name)
);

ALTER TABLE egeis_recruitment_type OWNER TO postgres;

CREATE SEQUENCE seq_egeis_recruitment_type INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1000 CACHE 1;
ALTER TABLE seq_egeis_recruitment_type OWNER TO postgres;


insert into egeis_recruitment_type values (nextval('seq_egeis_recruitment_type'), 'Direct');
insert into egeis_recruitment_type values (nextval('seq_egeis_recruitment_type'), 'Transfer');
insert into egeis_recruitment_type values (nextval('seq_egeis_recruitment_type'), 'Compensatory');
