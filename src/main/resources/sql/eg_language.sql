CREATE TABLE eg_language (
  id bigint NOT NULL,
  name character varying(50) NOT NULL,
  description character varying(255),
  active boolean NOT NULL,
  CONSTRAINT pk_eg_language_id PRIMARY KEY (id),
  CONSTRAINT uk_eg_language_name UNIQUE (name)
);

ALTER TABLE eg_language OWNER TO postgres;

CREATE SEQUENCE seq_eg_language INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;
ALTER TABLE seq_eg_language OWNER TO postgres;


insert into eg_language values (nextval('seq_eg_language'), 'Hindi', null, true);
insert into eg_language values (nextval('seq_eg_language'), 'Punjabi', null, true);
insert into eg_language values (nextval('seq_eg_language'), 'Kannada', null, true);
insert into eg_language values (nextval('seq_eg_language'), 'Marathi', null, true);
