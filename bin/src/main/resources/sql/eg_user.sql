CREATE TABLE eg_user (
  id bigint NOT NULL,
  username character varying(64) NOT NULL,
  password character varying(64) NOT NULL,
  salutation character varying(5),
  name character varying(100),
  gender character varying(10),
  mobilenumber character varying(18) NOT NULL,
  emailid character varying(128),
  altcontactnumber character varying(18),
  pan character varying(10),
  aadhaarnumber character varying(20),
  permanentaddress character varying(256),
  permanentcity character varying(50),
  permanentpincode character varying(10),
  correspondenceAddress character varying(256),
  correspondenceCity character varying(50),
  CorrespondencePincode character varying(10),
  active boolean NOT NULL,
  dob timestamp without time zone,
  pwdexpirydate timestamp without time zone DEFAULT ('now'::text)::timestamp without time zone NOT NULL,
  locale character varying(16) NOT NULL,
  type character varying(50),
  signature bytea,
  accountLocked boolean,
  fatherOrHusbandName character varying(100),
  bloodGroup character varying(5),
  identificationMark character varying(100),
  photo bytea,
  createdby bigint,
  createddate timestamp without time zone NOT NULL,
  lastmodifiedby bigint,
  lastmodifieddate timestamp without time zone,
  CONSTRAINT pk_eg_user_id PRIMARY KEY (id),
  CONSTRAINT uk_user_username UNIQUE (username),
  CONSTRAINT uk_user_mobilenumber UNIQUE (mobileNumber),
  CONSTRAINT fk_user_createdby FOREIGN KEY (createdby)
      REFERENCES eg_user (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);

ALTER TABLE eg_user OWNER TO postgres;

CREATE SEQUENCE seq_eg_user INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 52 CACHE 1;
ALTER TABLE seq_eg_user OWNER TO postgres;


insert into eg_user values (nextval('seq_eg_user'), 'AjeetKumarThakur', 'thakur05', 'Mr', 'Ajeet', 'Male', '9999999990', 'ajeet@gmail.com', '9898989899', 'CHXPU782', '897656986746', '78, Lhihdsjki, huyui', 'Bangalore', '560068', '78, Lhihdsjki, huyui', 'Bangalore', '560068', true, '1990-07-13', '2018-01-01', 'en_IN', 'EMPLOYEE', null, false, 'Mr Thakur', 'B+', 'Harry Potter Scar on face', null, null, current_timestamp, null, current_timestamp);
insert into eg_user values (nextval('seq_eg_user'), 'RajivKumar', 'rajiv02', 'Mr', 'Rajiv', 'Male', '9999999991', 'rajiv@gmail.com', '9898989891', 'CHXPU783', '897656986732', '78, Lhihdsjki, huyui', 'Bangalore', '560068', '78, Lhihdsjki, huyui', 'Bangalore', '560068', true, '1990-07-13', '2018-01-01', 'en_IN', 'EMPLOYEE', null, false, 'Mr Thakur', 'B+', 'Harry Potter Scar on face', null, 52, current_timestamp, 52, current_timestamp);
insert into eg_user values (nextval('seq_eg_user'), 'SupreetKumari', 'sk001', 'Ms', 'Supreet', 'Female', '9999999992', 'supreet@gmail.com', '9898989892', 'CHXPU781', '897656986743', '78, Lhihdsjki, huyui', 'Bangalore', '560068', '78, Lhihdsjki, huyui', 'Bangalore', '560068', true, '1990-07-13', '2018-01-01', 'en_IN', 'EMPLOYEE', null, false, 'Mr Thakur', 'B+', 'Harry Potter Scar on face', null, 52, current_timestamp, 52, current_timestamp);
insert into eg_user values (nextval('seq_eg_user'), 'SeemaS', 'seemas9', 'Ms', 'Seema', 'Female', '9999999993', 'seema@gmail.com', '9898989894', 'CHXPU785', '897656986745', '78, Lhihdsjki, huyui', 'Bangalore', '560068', '78, Lhihdsjki, huyui', 'Bangalore', '560068', true, '1990-07-13', '2018-01-01', 'en_IN', 'EMPLOYEE', null, false, 'Mr Thakur', 'B+', 'Harry Potter Scar on face', null, 54, current_timestamp, 54, current_timestamp);
insert into eg_user values (nextval('seq_eg_user'), 'RajatK', 'rajat5', 'Mr', 'Rajat', 'Male', '9999999994', 'rajat@gmail.com', '9898989895', 'CHXPU784', '897656986754', '78, Lhihdsjki, huyui', 'Bangalore', '560068', '78, Lhihdsjki, huyui', 'Bangalore', '560068', true, '1990-07-13', '2018-01-01', 'en_IN', 'EMPLOYEE', null, false, 'Mr Thakur', 'B+', 'Harry Potter Scar on face', null, 55, current_timestamp, 55, current_timestamp);

