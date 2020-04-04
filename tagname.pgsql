CREATE SCHEMA tagname;

COMMENT ON SCHEMA tagname
    IS 'For Tag Dictionary';

CREATE TABLE tagname.project (
    "ProjectId" integer NOT NULL,
    "Comment" name text,
    CONSTRAINT uni_id PRIMARY KEY ("ProjectId")
);

CREATE SEQUENCE tagname.seq_line AS bigint INCREMENT BY 1;

CREATE TABLE tagname."IODisc" (
"ProjectId" int,
"LineNo" bigint NOT NULL DEFAULT nextval('tagname.seq_line'::regclass),
"Name" text NOT NULL,
"Group" text NOT NULL,
"Comment" text NOT NULL,
"Logged" text NOT NULL,
"EventLogged" text NOT NULL,
"EventLoggingPriority" text NOT NULL,
"RetentiveValue" text NOT NULL,
"InitialDisc" text NOT NULL,
"OffMsg" text NOT NULL,
"OnMsg" text NOT NULL,
"AlarmState" text NOT NULL,
"AlarmPri" text NOT NULL,
"DConversion" text NOT NULL,
"AccessName" text NOT NULL,
"ItemUseTagname" text NOT NULL,
"ItemName" text NOT NULL,
"ReadOnly" text NOT NULL,
"AlarmComment" text NOT NULL,
"AlarmAckModel" text NOT NULL,
"DSCAlarmDisable" text NOT NULL,
"DSCAlarmInhibitor" text NOT NULL,
"SymbolicName" text NOT NULL,
CONSTRAINT pk_iodisc PRIMARY KEY ("LineNo"),
CONSTRAINT fk_project_id FOREIGN KEY ("ProjectId")
REFERENCES tagname.project ("ProjectId") MATCH SIMPLE
ON UPDATE NO ACTION
ON DELETE NO ACTION
);

CREATE TABLE tagname."IOInt" (
"ProjectId" int,
"LineNo" bigint NOT NULL DEFAULT nextval('tagname.seq_line'::regclass),
"Name" text NOT NULL,
"Group" text NOT NULL,
"Comment" text NOT NULL,
"Logged" text NOT NULL,
"EventLogged" text NOT NULL,
"EventLoggingPriority" text NOT NULL,
"RetentiveValue" text NOT NULL,
"RetentiveAlarmParameters" text NOT NULL,
"AlarmValueDeadband" text NOT NULL,
"AlarmDevDeadband" text NOT NULL,
"EngUnits" text NOT NULL,
"InitialValue" text NOT NULL,
"MinEU" text NOT NULL,
"MaxEU" text NOT NULL,
"Deadband" text NOT NULL,
"LogDeadband" text NOT NULL,
"LoLoAlarmState" text NOT NULL,
"LoLoAlarmValue" text NOT NULL,
"LoLoAlarmPri" text NOT NULL,
"LoAlarmState" text NOT NULL,
"LoAlarmValue" text NOT NULL,
"LoAlarmPri" text NOT NULL,
"HiAlarmState" text NOT NULL,
"HiAlarmValue" text NOT NULL,
"HiAlarmPri" text NOT NULL,
"HiHiAlarmState" text NOT NULL,
"HiHiAlarmValue" text NOT NULL,
"HiHiAlarmPri" text NOT NULL,
"MinorDevAlarmState" text NOT NULL,
"MinorDevAlarmValue" text NOT NULL,
"MinorDevAlarmPri" text NOT NULL,
"MajorDevAlarmState" text NOT NULL,
"MajorDevAlarmValue" text NOT NULL,
"MajorDevAlarmPri" text NOT NULL,
"DevTarget" text NOT NULL,
"ROCAlarmState" text NOT NULL,
"ROCAlarmValue" text NOT NULL,
"ROCAlarmPri" text NOT NULL,
"ROCTimeBase" text NOT NULL,
"MinRaw" text NOT NULL,
"MaxRaw" text NOT NULL,
"Conversion" text NOT NULL,
"AccessName" text NOT NULL,
"ItemUseTagname" text NOT NULL,
"ItemName" text NOT NULL,
"ReadOnly" text NOT NULL,
"AlarmComment" text NOT NULL,
"AlarmAckModel" text NOT NULL,
"LoLoAlarmDisable" text NOT NULL,
"LoAlarmDisable" text NOT NULL,
"HiAlarmDisable" text NOT NULL,
"HiHiAlarmDisable" text NOT NULL,
"MinDevAlarmDisable" text NOT NULL,
"MajDevAlarmDisable" text NOT NULL,
"RocAlarmDisable" text NOT NULL,
"LoLoAlarmInhibitor" text NOT NULL,
"LoAlarmInhibitor" text NOT NULL,
"HiAlarmInhibitor" text NOT NULL,
"HiHiAlarmInhibitor" text NOT NULL,
"MinDevAlarmInhibitor" text NOT NULL,
"MajDevAlarmInhibitor" text NOT NULL,
"RocAlarmInhibitor" text NOT NULL,
"SymbolicName" text NOT NULL,
CONSTRAINT pk_ioint PRIMARY KEY ("LineNo"),
CONSTRAINT fk_project_id FOREIGN KEY ("ProjectId")
REFERENCES tagname.project ("ProjectId") MATCH SIMPLE
ON UPDATE NO ACTION
ON DELETE NO ACTION
);

CREATE TABLE tagname."IOReal" (
"ProjectId" int,
"LineNo" bigint NOT NULL DEFAULT nextval('tagname.seq_line'::regclass),
"Name" text NOT NULL,
"Group" text NOT NULL,
"Comment" text NOT NULL,
"Logged" text NOT NULL,
"EventLogged" text NOT NULL,
"EventLoggingPriority" text NOT NULL,
"RetentiveValue" text NOT NULL,
"RetentiveAlarmParameters" text NOT NULL,
"AlarmValueDeadband" text NOT NULL,
"AlarmDevDeadband" text NOT NULL,
"EngUnits" text NOT NULL,
"InitialValue" text NOT NULL,
"MinEU" text NOT NULL,
"MaxEU" text NOT NULL,
"Deadband" text NOT NULL,
"LogDeadband" text NOT NULL,
"LoLoAlarmState" text NOT NULL,
"LoLoAlarmValue" text NOT NULL,
"LoLoAlarmPri" text NOT NULL,
"LoAlarmState" text NOT NULL,
"LoAlarmValue" text NOT NULL,
"LoAlarmPri" text NOT NULL,
"HiAlarmState" text NOT NULL,
"HiAlarmValue" text NOT NULL,
"HiAlarmPri" text NOT NULL,
"HiHiAlarmState" text NOT NULL,
"HiHiAlarmValue" text NOT NULL,
"HiHiAlarmPri" text NOT NULL,
"MinorDevAlarmState" text NOT NULL,
"MinorDevAlarmValue" text NOT NULL,
"MinorDevAlarmPri" text NOT NULL,
"MajorDevAlarmState" text NOT NULL,
"MajorDevAlarmValue" text NOT NULL,
"MajorDevAlarmPri" text NOT NULL,
"DevTarget" text NOT NULL,
"ROCAlarmState" text NOT NULL,
"ROCAlarmValue" text NOT NULL,
"ROCAlarmPri" text NOT NULL,
"ROCTimeBase" text NOT NULL,
"MinRaw" text NOT NULL,
"MaxRaw" text NOT NULL,
"Conversion" text NOT NULL,
"AccessName" text NOT NULL,
"ItemUseTagname" text NOT NULL,
"ItemName" text NOT NULL,
"ReadOnly" text NOT NULL,
"AlarmComment" text NOT NULL,
"AlarmAckModel" text NOT NULL,
"LoLoAlarmDisable" text NOT NULL,
"LoAlarmDisable" text NOT NULL,
"HiAlarmDisable" text NOT NULL,
"HiHiAlarmDisable" text NOT NULL,
"MinDevAlarmDisable" text NOT NULL,
"MajDevAlarmDisable" text NOT NULL,
"RocAlarmDisable" text NOT NULL,
"LoLoAlarmInhibitor" text NOT NULL,
"LoAlarmInhibitor" text NOT NULL,
"HiAlarmInhibitor" text NOT NULL,
"HiHiAlarmInhibitor" text NOT NULL,
"MinDevAlarmInhibitor" text NOT NULL,
"MajDevAlarmInhibitor" text NOT NULL,
"RocAlarmInhibitor" text NOT NULL,
"SymbolicName" text NOT NULL,
CONSTRAINT pk_ioreal PRIMARY KEY ("LineNo"),
CONSTRAINT fk_project_id FOREIGN KEY ("ProjectId")
REFERENCES tagname.project ("ProjectId") MATCH SIMPLE
ON UPDATE NO ACTION
ON DELETE NO ACTION);

CREATE TABLE tagname."MemoryDisc" (
"ProjectId" int,
"LineNo" bigint NOT NULL DEFAULT nextval('tagname.seq_line'::regclass),
"Name" text NOT NULL,
"Group" text NOT NULL,
"Comment" text NOT NULL,
"Logged" text NOT NULL,
"EventLogged" text NOT NULL,
"EventLoggingPriority" text NOT NULL,
"RetentiveValue" text NOT NULL,
"InitialDisc" text NOT NULL,
"OffMsg" text NOT NULL,
"OnMsg" text NOT NULL,
"AlarmState" text NOT NULL,
"AlarmPri" text NOT NULL,
"AlarmComment" text NOT NULL,
"AlarmAckModel" text NOT NULL,
"DSCAlarmDisable" text NOT NULL,
"DSCAlarmInhibitor" text NOT NULL,
"SymbolicName" text NOT NULL,
CONSTRAINT pk_memorydisc PRIMARY KEY ("LineNo"),
CONSTRAINT fk_project_id FOREIGN KEY ("ProjectId")
REFERENCES tagname.project ("ProjectId") MATCH SIMPLE
ON UPDATE NO ACTION
ON DELETE NO ACTION
);

CREATE TABLE tagname."MemoryInt" (
"ProjectId" int,
"LineNo" bigint NOT NULL DEFAULT nextval('tagname.seq_line'::regclass),
"Name" text NOT NULL,
"Group" text NOT NULL,
"Comment" text NOT NULL,
"Logged" text NOT NULL,
"EventLogged" text NOT NULL,
"EventLoggingPriority" text NOT NULL,
"RetentiveValue" text NOT NULL,
"RetentiveAlarmParameters" text NOT NULL,
"AlarmValueDeadband" text NOT NULL,
"AlarmDevDeadband" text NOT NULL,
"EngUnits" text NOT NULL,
"InitialValue" text NOT NULL,
"MinValue" text NOT NULL,
"MaxValue" text NOT NULL,
"Deadband" text NOT NULL,
"LogDeadband" text NOT NULL,
"LoLoAlarmState" text NOT NULL,
"LoLoAlarmValue" text NOT NULL,
"LoLoAlarmPri" text NOT NULL,
"LoAlarmState" text NOT NULL,
"LoAlarmValue" text NOT NULL,
"LoAlarmPri" text NOT NULL,
"HiAlarmState" text NOT NULL,
"HiAlarmValue" text NOT NULL,
"HiAlarmPri" text NOT NULL,
"HiHiAlarmState" text NOT NULL,
"HiHiAlarmValue" text NOT NULL,
"HiHiAlarmPri" text NOT NULL,
"MinorDevAlarmState" text NOT NULL,
"MinorDevAlarmValue" text NOT NULL,
"MinorDevAlarmPri" text NOT NULL,
"MajorDevAlarmState" text NOT NULL,
"MajorDevAlarmValue" text NOT NULL,
"MajorDevAlarmPri" text NOT NULL,
"DevTarget" text NOT NULL,
"ROCAlarmState" text NOT NULL,
"ROCAlarmValue" text NOT NULL,
"ROCAlarmPri" text NOT NULL,
"ROCTimeBase" text NOT NULL,
"AlarmComment" text NOT NULL,
"AlarmAckModel" text NOT NULL,
"LoLoAlarmDisable" text NOT NULL,
"LoAlarmDisable" text NOT NULL,
"HiAlarmDisable" text NOT NULL,
"HiHiAlarmDisable" text NOT NULL,
"MinDevAlarmDisable" text NOT NULL,
"MajDevAlarmDisable" text NOT NULL,
"RocAlarmDisable" text NOT NULL,
"LoLoAlarmInhibitor" text NOT NULL,
"LoAlarmInhibitor" text NOT NULL,
"HiAlarmInhibitor" text NOT NULL,
"HiHiAlarmInhibitor" text NOT NULL,
"MinDevAlarmInhibitor" text NOT NULL,
"MajDevAlarmInhibitor" text NOT NULL,
"RocAlarmInhibitor" text NOT NULL,
"SymbolicName" text NOT NULL,
CONSTRAINT pk_memoryint PRIMARY KEY ("LineNo"),
CONSTRAINT fk_project_id FOREIGN KEY ("ProjectId")
REFERENCES tagname.project ("ProjectId") MATCH SIMPLE
ON UPDATE NO ACTION
ON DELETE NO ACTION);

CREATE TABLE tagname."MemoryReal" (
"ProjectId" int,
"LineNo" bigint NOT NULL DEFAULT nextval('tagname.seq_line'::regclass),
"Name" text NOT NULL,
"Group" text NOT NULL,
"Comment" text NOT NULL,
"Logged" text NOT NULL,
"EventLogged" text NOT NULL,
"EventLoggingPriority" text NOT NULL,
"RetentiveValue" text NOT NULL,
"RetentiveAlarmParameters" text NOT NULL,
"AlarmValueDeadband" text NOT NULL,
"AlarmDevDeadband" text NOT NULL,
"EngUnits" text NOT NULL,
"InitialValue" text NOT NULL,
"MinValue" text NOT NULL,
"MaxValue" text NOT NULL,
"Deadband" text NOT NULL,
"LogDeadband" text NOT NULL,
"LoLoAlarmState" text NOT NULL,
"LoLoAlarmValue" text NOT NULL,
"LoLoAlarmPri" text NOT NULL,
"LoAlarmState" text NOT NULL,
"LoAlarmValue" text NOT NULL,
"LoAlarmPri" text NOT NULL,
"HiAlarmState" text NOT NULL,
"HiAlarmValue" text NOT NULL,
"HiAlarmPri" text NOT NULL,
"HiHiAlarmState" text NOT NULL,
"HiHiAlarmValue" text NOT NULL,
"HiHiAlarmPri" text NOT NULL,
"MinorDevAlarmState" text NOT NULL,
"MinorDevAlarmValue" text NOT NULL,
"MinorDevAlarmPri" text NOT NULL,
"MajorDevAlarmState" text NOT NULL,
"MajorDevAlarmValue" text NOT NULL,
"MajorDevAlarmPri" text NOT NULL,
"DevTarget" text NOT NULL,
"ROCAlarmState" text NOT NULL,
"ROCAlarmValue" text NOT NULL,
"ROCAlarmPri" text NOT NULL,
"ROCTimeBase" text NOT NULL,
"AlarmComment" text NOT NULL,
"AlarmAckModel" text NOT NULL,
"LoLoAlarmDisable" text NOT NULL,
"LoAlarmDisable" text NOT NULL,
"HiAlarmDisable" text NOT NULL,
"HiHiAlarmDisable" text NOT NULL,
"MinDevAlarmDisable" text NOT NULL,
"MajDevAlarmDisable" text NOT NULL,
"RocAlarmDisable" text NOT NULL,
"LoLoAlarmInhibitor" text NOT NULL,
"LoAlarmInhibitor" text NOT NULL,
"HiAlarmInhibitor" text NOT NULL,
"HiHiAlarmInhibitor" text NOT NULL,
"MinDevAlarmInhibitor" text NOT NULL,
"MajDevAlarmInhibitor" text NOT NULL,
"RocAlarmInhibitor" text NOT NULL,
"SymbolicName" text NOT NULL,
CONSTRAINT pk_memoryreal PRIMARY KEY ("LineNo"),
CONSTRAINT fk_project_id FOREIGN KEY ("ProjectId")
REFERENCES tagname.project ("ProjectId") MATCH SIMPLE
ON UPDATE NO ACTION
ON DELETE NO ACTION);

CREATE TABLE tagname."IOMsg" (
"ProjectId" int,
"LineNo" bigint NOT NULL DEFAULT nextval('tagname.seq_line'::regclass),
"Name" text NOT NULL,
"Group" text NOT NULL,
"Comment" text NOT NULL,
"Logged" text NOT NULL,
"EventLogged" text NOT NULL,
"EventLoggingPriority" text NOT NULL,
"RetentiveValue" text NOT NULL,
"MaxLength" text NOT NULL,
"InitialMessage" text NOT NULL,
"AccessName" text NOT NULL,
"ItemUseTagname" text NOT NULL,
"ItemName" text NOT NULL,
"ReadOnly" text NOT NULL,
"AlarmComment" text NOT NULL,
"SymbolicName" text NOT NULL,
CONSTRAINT pk_iomsg PRIMARY KEY ("LineNo"),
CONSTRAINT fk_project_id FOREIGN KEY ("ProjectId")
REFERENCES tagname.project ("ProjectId") MATCH SIMPLE
ON UPDATE NO ACTION
ON DELETE NO ACTION
);

CREATE TABLE tagname."MemoryMsg" (
"ProjectId" int,
"LineNo" bigint NOT NULL DEFAULT nextval('tagname.seq_line'::regclass),
"Name" text NOT NULL,
"Group" text NOT NULL,
"Comment" text NOT NULL,
"Logged" text NOT NULL,
"EventLogged" text NOT NULL,
"EventLoggingPriority" text NOT NULL,
"RetentiveValue" text NOT NULL,
"MaxLength" text NOT NULL,
"InitialMessage" text NOT NULL,
"AlarmComment" text NOT NULL,
"SymbolicName" text NOT NULL,
CONSTRAINT pk_memorymsg PRIMARY KEY ("LineNo"),
CONSTRAINT fk_project_id FOREIGN KEY ("ProjectId")
REFERENCES tagname.project ("ProjectId") MATCH SIMPLE
ON UPDATE NO ACTION
ON DELETE NO ACTION
);

CREATE TABLE tagname."AlarmGroup" (
"ProjectId" int,
"LineNo" bigint NOT NULL DEFAULT nextval('tagname.seq_line'::regclass),
"Name" text NOT NULL,
"Group" text NOT NULL,
"Comment" text NOT NULL,
"EventLogged" text NOT NULL,
"EventLoggingPriority" text NOT NULL,
"LoLoAlarmDisable" text NOT NULL,
"LoAlarmDisable" text NOT NULL,
"HiAlarmDisable" text NOT NULL,
"HiHiAlarmDisable" text NOT NULL,
"MinDevAlarmDisable" text NOT NULL,
"MajDevAlarmDisable" text NOT NULL,
"RocAlarmDisable" text NOT NULL,
"DSCAlarmDisable" text NOT NULL,
"LoLoAlarmInhibitor" text NOT NULL,
"LoAlarmInhibitor" text NOT NULL,
"HiAlarmInhibitor" text NOT NULL,
"HiHiAlarmInhibitor" text NOT NULL,
"MinDevAlarmInhibitor" text NOT NULL,
"MajDevAlarmInhibitor" text NOT NULL,
"RocAlarmInhibitor" text NOT NULL,
"DSCAlarmInhibitor" text NOT NULL,
CONSTRAINT pk_alarmgroup PRIMARY KEY ("LineNo"),
CONSTRAINT fk_project_id FOREIGN KEY ("ProjectId")
REFERENCES tagname.project ("ProjectId") MATCH SIMPLE
ON UPDATE NO ACTION
ON DELETE NO ACTION
);

CREATE TABLE tagname."IOAccess" (
"ProjectId" int,
"LineNo" bigint NOT NULL DEFAULT nextval('tagname.seq_line'::regclass),
"Name" text NOT NULL,
"Application" text NOT NULL,
"Topic" text NOT NULL,
"AdviseActive" text NOT NULL,
"DDEProtocol" text NOT NULL,
"SecApplication" text NOT NULL,
"SecTopic" text NOT NULL,
"SecAdviseActive" text NOT NULL,
"SecDDEProtocol" text NOT NULL,
"FailoverExpression" text NOT NULL,
"FailoverDeadband" text NOT NULL,
"DFOFlag" text NOT NULL,
"FBDFlag" text NOT NULL,
"FailbackDeadband" text NOT NULL,
CONSTRAINT pk_ioaccess PRIMARY KEY ("LineNo"),
CONSTRAINT fk_project_id FOREIGN KEY ("ProjectId")
REFERENCES tagname.project ("ProjectId") MATCH SIMPLE
ON UPDATE NO ACTION
ON DELETE NO ACTION
);

CREATE TABLE tagname."GroupVar" (
"ProjectId" int,
"LineNo" bigint NOT NULL DEFAULT nextval('tagname.seq_line'::regclass),
"Name" text NOT NULL,
"Group" text NOT NULL,
"Comment" text NOT NULL,
"SymbolicName" text NOT NULL,
CONSTRAINT pk_groupvar PRIMARY KEY ("LineNo"),
CONSTRAINT fk_project_id FOREIGN KEY ("ProjectId")
REFERENCES tagname.project ("ProjectId") MATCH SIMPLE
ON UPDATE NO ACTION
ON DELETE NO ACTION
);

CREATE TABLE tagname."HistoryTrend" (
"ProjectId" int,
"LineNo" bigint NOT NULL DEFAULT nextval('tagname.seq_line'::regclass),
"Name" text NOT NULL,
"Group" text NOT NULL,
"Comment" text NOT NULL,
"SymbolicName" text NOT NULL,
CONSTRAINT pk_historytrend PRIMARY KEY ("LineNo"),
CONSTRAINT fk_project_id FOREIGN KEY ("ProjectId")
REFERENCES tagname.project ("ProjectId") MATCH SIMPLE
ON UPDATE NO ACTION
ON DELETE NO ACTION
);

CREATE TABLE tagname."TagID" (
"ProjectId" int,
"LineNo" bigint NOT NULL DEFAULT nextval('tagname.seq_line'::regclass),
"Name" text NOT NULL,
"Group" text NOT NULL,
"Comment" text NOT NULL,
CONSTRAINT pk_tagid PRIMARY KEY ("LineNo"),
CONSTRAINT fk_project_id FOREIGN KEY ("ProjectId")
REFERENCES tagname.project ("ProjectId") MATCH SIMPLE
ON UPDATE NO ACTION
ON DELETE NO ACTION
);

CREATE TABLE tagname."IndirectDisc" (
"ProjectId" int,
"LineNo" bigint NOT NULL DEFAULT nextval('tagname.seq_line'::regclass),
"Name" text NOT NULL,
"Group" text NOT NULL,
"Comment" text NOT NULL,
"EventLogged" text NOT NULL,
"EventLoggingPriority" text NOT NULL,
"RetentiveValue" text NOT NULL,
"SymbolicName" text NOT NULL,
CONSTRAINT pk_indirectdisc PRIMARY KEY ("LineNo"),
CONSTRAINT fk_project_id FOREIGN KEY ("ProjectId")
REFERENCES tagname.project ("ProjectId") MATCH SIMPLE
ON UPDATE NO ACTION
ON DELETE NO ACTION
);

CREATE TABLE tagname."IndirectAnalog" (
"ProjectId" int,
"LineNo" bigint NOT NULL DEFAULT nextval('tagname.seq_line'::regclass),
"Name" text NOT NULL,
"Group" text NOT NULL,
"Comment" text NOT NULL,
"EventLogged" text NOT NULL,
"EventLoggingPriority" text NOT NULL,
"RetentiveValue" text NOT NULL,
"SymbolicName" text NOT NULL,
CONSTRAINT pk_indirectanalog PRIMARY KEY ("LineNo"),
CONSTRAINT fk_project_id FOREIGN KEY ("ProjectId")
REFERENCES tagname.project ("ProjectId") MATCH SIMPLE
ON UPDATE NO ACTION
ON DELETE NO ACTION
);

CREATE TABLE tagname."IndirectMsg" (
"ProjectId" int,
"LineNo" bigint NOT NULL DEFAULT nextval('tagname.seq_line'::regclass),
"Name" text NOT NULL,
"Group" text NOT NULL,
"Comment" text NOT NULL,
"EventLogged" text NOT NULL,
"EventLoggingPriority" text NOT NULL,
"RetentiveValue" text NOT NULL,
"SymbolicName" text NOT NULL,
CONSTRAINT pk_indirectmsg PRIMARY KEY ("LineNo"),
CONSTRAINT fk_project_id FOREIGN KEY ("ProjectId")
REFERENCES tagname.project ("ProjectId") MATCH SIMPLE
ON UPDATE NO ACTION
ON DELETE NO ACTION
);