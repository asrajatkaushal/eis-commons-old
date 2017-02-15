CREATE TABLE eg_category (
  id bigint NOT NULL,
  name character varying(50) NOT NULL,
  description character varying(255),
  active boolean NOT NULL,
  CONSTRAINT pk_eg_category_id PRIMARY KEY (id),
  CONSTRAINT uk_eg_category_name UNIQUE (name)
);

ALTER TABLE eg_category OWNER TO postgres;

CREATE SEQUENCE seq_eg_category INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;
ALTER TABLE seq_eg_category OWNER TO postgres;


insert into eg_category values (nextval('seq_eg_category'), 'General', null, true);
insert into eg_category values (nextval('seq_eg_category'), 'OBC', null, true);
insert into eg_category values (nextval('seq_eg_category'), 'SC', null, true);
insert into eg_category values (nextval('seq_eg_category'), 'ST', null, true);
