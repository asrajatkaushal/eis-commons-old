CREATE TABLE eg_religion (
  id bigint NOT NULL,
  name character varying(50) NOT NULL,
  description character varying(255),
  active boolean NOT NULL,
  CONSTRAINT pk_eg_religion_id PRIMARY KEY (id),
  CONSTRAINT uk_eg_religion_name UNIQUE (name)
);

ALTER TABLE eg_religion OWNER TO postgres;

CREATE SEQUENCE seq_eg_religion INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;
ALTER TABLE seq_eg_religion OWNER TO postgres;


insert into eg_religion values (nextval('seq_eg_religion'), 'Hinduism', null, true);
insert into eg_religion values (nextval('seq_eg_religion'), 'Sikhism', null, true);
insert into eg_religion values (nextval('seq_eg_religion'), 'Jainism', null, true);
insert into eg_religion values (nextval('seq_eg_religion'), 'Christianity', null, true);
insert into eg_religion values (nextval('seq_eg_religion'), 'Islam', null, true);
