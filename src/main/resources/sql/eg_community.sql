CREATE TABLE eg_community (
  id bigint NOT NULL,
  name character varying(50) NOT NULL,
  description character varying(255),
  active boolean NOT NULL,
  CONSTRAINT pk_eg_community_id PRIMARY KEY (id),
  CONSTRAINT uk_eg_community_name UNIQUE (name)
);

ALTER TABLE eg_community OWNER TO postgres;

CREATE SEQUENCE seq_eg_community INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;
ALTER TABLE seq_eg_community OWNER TO postgres;


insert into eg_community values (nextval('seq_eg_community'), 'Thakur', null, true);
insert into eg_community values (nextval('seq_eg_community'), 'Brahmin', null, true);
insert into eg_community values (nextval('seq_eg_community'), 'Maratha', null, true);
insert into eg_community values (nextval('seq_eg_community'), 'Kannadiga', null, true);
