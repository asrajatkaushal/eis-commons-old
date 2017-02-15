CREATE TABLE egeis_grade (
  id bigint NOT NULL,
  name character varying(90) NOT NULL,
  description character varying(256),
  orderno integer,
  active boolean NOT NULL,

  CONSTRAINT pk_egeis_grade_id PRIMARY KEY (id),
  CONSTRAINT uk_egeis_grade_name UNIQUE (name)
);

ALTER TABLE egeis_grade OWNER TO postgres;

CREATE SEQUENCE seq_egeis_grade INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 10 CACHE 1;
ALTER TABLE seq_egeis_grade OWNER TO postgres;


insert into egeis_grade values (nextval('seq_egeis_grade'), 'A', null, 1, true);
insert into egeis_grade values (nextval('seq_egeis_grade'), 'B', null, 1, false);
insert into egeis_grade values (nextval('seq_egeis_grade'), 'C', null, 2, true);
