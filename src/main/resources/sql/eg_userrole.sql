CREATE TABLE eg_userrole (
  roleid bigint NOT NULL,
  userid bigint NOT NULL,
  CONSTRAINT fk_eg_userrole_roleid FOREIGN KEY (roleid)
      REFERENCES eg_role (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_eg_userrole_userid FOREIGN KEY (userid)
      REFERENCES eg_user (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);

ALTER TABLE eg_userrole OWNER TO postgres;


insert into eg_userrole values (52, 55);
insert into eg_userrole values (53, 56);
insert into eg_userrole values (54, 55);
insert into eg_userrole values (52, 56);
insert into eg_userrole values (54, 56);
