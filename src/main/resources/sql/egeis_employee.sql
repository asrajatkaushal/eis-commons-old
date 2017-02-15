CREATE TABLE egeis_employee (
  code character varying(25) NOT NULL,
  userid bigint NOT NULL,
  dateofappointment date,
  dateOfJoining date,
  dateofretirement date,
  employeestatus character varying(25),
  recruitmentMode bigint,
  recruitmentType bigint,
  recruitmentQuota bigint,
  retirementAge smallint,
  dateOfResignation date,
  dateOfTermination date,
  employeeType bigint,
  motherTounge bigint,
  religion bigint,
  community bigint,
  category bigint,
  physicallyDisabled boolean,
  medicalReportProduced boolean,
  maritalStatus character varying(16),
  passportNo character varying(10),
  gpfNo character varying(18),
  bankAccount character varying(18),
  employeegroup bigint,
  placeOfBirth character varying(25),
  documents bytea,

  CONSTRAINT pk_egeis_employee_code PRIMARY KEY (code),
  CONSTRAINT uk_egeis_employee_userid UNIQUE (userid)
);

ALTER TABLE egeis_employee OWNER TO postgres;


insert into egeis_employee values ('EGOV_E1', 52, '2016-12-13', '2017-01-01', '2081-01-01', 'EMPLOYED', 1000, 1000, 1000, 64, null, null, 52, 1, 1, 1, 1, false, false, 'Single', 'ER767UG76', 'TR87876', '909897675654647', 10, 'Basoda', null);
insert into egeis_employee values ('EGOV_E2', 54, '2016-11-13', '2016-12-01', '2080-12-01', 'EMPLOYED', 1001, 1002, 1000, 64, null, null, 52, 2, 2, 2, 2, false, false, 'Married', 'ER242UG76', 'TR87824', '909897675654647', 11, 'Bhopal', null);
insert into egeis_employee values ('EGOV_E3', 55, '2016-10-03', '2016-10-15', '2016-10-15', 'EMPLOYED', 1000, 1001, 1002, 64, null, null, 52, 3, 3, 3, 2, false, false, 'Married', 'ERU342G76', 'TR8KIJ2', '909897675654647', 12, 'Vadodara', null);
insert into egeis_employee values ('EGOV_E4', 56, '2016-12-13', '2016-12-15', '2016-12-15', 'EMPLOYED', 1002, 1000, 1002, 64, null, null, 52, 1, 4, 4, 3, false, false, 'Single', 'ERU342G76', 'TR8KIJ2', '909897675654647', 10, 'Bangalore', null);
