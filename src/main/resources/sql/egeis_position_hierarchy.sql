CREATE TABLE egeis_position_hierarchy (
  id bigint NOT NULL,
  toPosition bigint,
  fromPosition bigint,
  objectTypeId bigint,
  objectSubType character varying(512),
  
  CONSTRAINT pk_egeis_position_hierarchy PRIMARY KEY (id),
  CONSTRAINT uk_egeis_position_hierarchy_position_from_to_obj_type_subtype UNIQUE (fromposition, toposition, objecttypeid, objectsubtype),
  CONSTRAINT fk_egeis_position_hierarchy_toposition FOREIGN KEY (toposition)
      REFERENCES egeis_position (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_egeis_position_hierarchy_fromposition FOREIGN KEY (fromposition)
      REFERENCES egeis_position (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);

ALTER TABLE egeis_position_hierarchy OWNER TO postgres;

CREATE SEQUENCE seq_egeis_position_hierarchy INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 52 CACHE 1;
ALTER TABLE seq_egeis_position_hierarchy OWNER TO postgres;


insert into egeis_position_hierarchy values (nextval('seq_egeis_position_hierarchy'), 53, 52, 1, 'S1');
insert into egeis_position_hierarchy values (nextval('seq_egeis_position_hierarchy'), 54, 55, 2, 'S2');
