CREATE TABLE egeis_calendar_year (
  id bigint NOT NULL,
  name character varying(45) NOT NULL,
  startDate date NOT NULL,
  endDate date NOT NULL,
  active boolean NOT NULL,

  CONSTRAINT pk_egeis_calendar_year PRIMARY KEY (id),
  CONSTRAINT uk_egeis_calendar_year_name UNIQUE (name)
);

ALTER TABLE egeis_calendar_year OWNER TO postgres;

CREATE SEQUENCE seq_egeis_calendar_year INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;
ALTER TABLE seq_egeis_calendar_year OWNER TO postgres;


insert into egeis_calendar_year values (nextval('seq_egeis_calendar_year'), '2014', '2014-01-01', '2014-06-01', false);
insert into egeis_calendar_year values (nextval('seq_egeis_calendar_year'), '2015', '2015-01-01', '2015-06-01', true);
insert into egeis_calendar_year values (nextval('seq_egeis_calendar_year'), '2016', '2016-01-01', '2016-06-01', true);
insert into egeis_calendar_year values (nextval('seq_egeis_calendar_year'), '2017', '2017-01-01', '2017-06-01', true);
