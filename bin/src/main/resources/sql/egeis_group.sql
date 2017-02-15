CREATE TABLE egeis_group (
  id bigint NOT NULL,
  name character varying(90) NOT NULL,
  description character varying(256),

  CONSTRAINT pk_egeis_group_id PRIMARY KEY (id),
  CONSTRAINT uk_egeis_group_name UNIQUE (name)
);

ALTER TABLE egeis_group OWNER TO postgres;

CREATE SEQUENCE seq_egeis_group INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 10 CACHE 1;
ALTER TABLE seq_egeis_group OWNER TO postgres;


insert into egeis_group values (nextval('seq_egeis_group'), 'State', null);
insert into egeis_group values (nextval('seq_egeis_group'), 'Local', null);
insert into egeis_group values (nextval('seq_egeis_group'), 'Central', null);
