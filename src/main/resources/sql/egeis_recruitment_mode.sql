CREATE TABLE egeis_recruitment_mode (
  id bigint NOT NULL,
  name character varying(256) NOT NULL,
  CONSTRAINT pk_egeis_recruiment_mode_id PRIMARY KEY (id),
  CONSTRAINT uk_egeis_recruiment_mode_name UNIQUE (name)
);

ALTER TABLE egeis_recruitment_mode OWNER TO postgres;

CREATE SEQUENCE seq_egeis_recruitment_mode INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1000 CACHE 1;
ALTER TABLE seq_egeis_recruitment_mode OWNER TO postgres;


insert into egeis_recruitment_mode values (nextval('seq_egeis_recruitment_mode'), 'UPSC');
insert into egeis_recruitment_mode values (nextval('seq_egeis_recruitment_mode'), 'Department Exams');
