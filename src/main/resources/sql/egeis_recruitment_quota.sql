CREATE TABLE egeis_recruitment_quota (
  id bigint NOT NULL,
  name character varying(256) NOT NULL,
  CONSTRAINT pk_egeis_recruiment_quota_id PRIMARY KEY (id),
  CONSTRAINT uk_egeis_recruiment_quota_name UNIQUE (name)
);

ALTER TABLE egeis_recruitment_quota OWNER TO postgres;

CREATE SEQUENCE seq_egeis_recruitment_quota INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1000 CACHE 1;
ALTER TABLE seq_egeis_recruitment_quota OWNER TO postgres;


insert into egeis_recruitment_quota values (nextval('seq_egeis_recruitment_quota'), 'Sports Quota');
insert into egeis_recruitment_quota values (nextval('seq_egeis_recruitment_quota'), 'Ex-Serviceman');
insert into egeis_recruitment_quota values (nextval('seq_egeis_recruitment_quota'), 'Handicapped');
