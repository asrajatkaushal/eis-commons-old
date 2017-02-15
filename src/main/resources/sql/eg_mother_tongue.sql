CREATE TABLE eg_mother_tongue (
  id bigint NOT NULL,
  name character varying(50) NOT NULL,
  description character varying(255),
  active boolean NOT NULL,
  CONSTRAINT pk_eg_mother_tongue_id PRIMARY KEY (id),
  CONSTRAINT uk_eg_mother_tongue_name UNIQUE (name)
);

ALTER TABLE eg_mother_tongue OWNER TO postgres;

CREATE SEQUENCE seq_eg_mother_tongue INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;
ALTER TABLE seq_eg_mother_tongue OWNER TO postgres;


insert into eg_mother_tongue values (nextval('seq_eg_mother_tongue'), 'Hindi', null, true);
insert into eg_mother_tongue values (nextval('seq_eg_mother_tongue'), 'Marathi', null, true);
insert into eg_mother_tongue values (nextval('seq_eg_mother_tongue'), 'Punjabi', null, true);
insert into eg_mother_tongue values (nextval('seq_eg_mother_tongue'), 'Kannada', null, true);
