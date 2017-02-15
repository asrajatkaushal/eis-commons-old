CREATE TABLE egeis_position (
  id bigint NOT NULL,
  name character varying(45) NOT NULL,
  deptdesig bigint NOT NULL,
  ispostoutsourced boolean,

  CONSTRAINT pk_egeis_position PRIMARY KEY (id),
  CONSTRAINT uk_egeis_position_name UNIQUE (name)
);

ALTER TABLE egeis_position OWNER TO postgres;

CREATE SEQUENCE seq_egeis_position INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 52 CACHE 1;
ALTER TABLE seq_egeis_position OWNER TO postgres;


insert into egeis_position values (nextval('seq_egeis_position'), 'Acc_MGR', 1, false);
insert into egeis_position values (nextval('seq_egeis_position'), 'Acc_ASS', 5, true);
insert into egeis_position values (nextval('seq_egeis_position'), 'DEV_MGR', 2, false);
insert into egeis_position values (nextval('seq_egeis_position'), 'DEV_ASS', 6, false);
