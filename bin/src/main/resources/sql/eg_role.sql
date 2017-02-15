create table eg_role (
  id bigint NOT NULL,
  name character varying(32) NOT NULL,
  description character varying(128),
  createdBy bigint  NOT NULL,
  createddate timestamp without time zone DEFAULT ('now'::text)::timestamp without time zone NOT NULL,
  lastModifiedBy bigint,
  lastmodifieddate timestamp without time zone,
  CONSTRAINT pk_eg_role_id PRIMARY KEY (id),
  CONSTRAINT uk_role_name UNIQUE (name)
);

ALTER TABLE eg_role OWNER TO postgres;

CREATE SEQUENCE seq_eg_role INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 52 CACHE 1;
ALTER TABLE seq_eg_role OWNER TO postgres;


insert into eg_role values (nextval('seq_eg_role'), 'Developer', 'Development dept.', 54, current_timestamp, 55, current_timestamp);
insert into eg_role values (nextval('seq_eg_role'), 'HR', 'Management dept.', 54, current_timestamp, 55, current_timestamp);
insert into eg_role values (nextval('seq_eg_role'), 'Administration', 'Administration dept.', 54, current_timestamp, 55, current_timestamp);
