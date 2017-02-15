CREATE TABLE egeis_holiday (
  id bigint NOT NULL,
  name character varying(90) NOT NULL,
  calendarYearName character varying(25) NOT NULL,
  applicableOn date NOT NULL,

  CONSTRAINT pk_egeis_holiday_id PRIMARY KEY (id),
  CONSTRAINT uk_egeis_holiday_name_applicableOn UNIQUE (name, applicableOn),
  CONSTRAINT fk_egeis_holiday_calendarYearName FOREIGN KEY (calendarYearName)
      REFERENCES egeis_calendar_year (name) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);

ALTER TABLE egeis_holiday OWNER TO postgres;

CREATE SEQUENCE seq_egeis_holiday INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 10 CACHE 1;
ALTER TABLE seq_egeis_holiday OWNER TO postgres;


insert into egeis_holiday values (nextval('seq_egeis_holiday'), 'Republic Day', '2016', '2016-01-26');
insert into egeis_holiday values (nextval('seq_egeis_holiday'), 'Independence Day', '2016', '2016-08-15');
insert into egeis_holiday values (nextval('seq_egeis_holiday'), 'Independence Day', '2017', '2017-08-15');
insert into egeis_holiday values (nextval('seq_egeis_holiday'), 'Republic Day', '2017', '2017-01-26');
