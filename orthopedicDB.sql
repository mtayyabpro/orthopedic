create database orthopedicDB;
USE orthopedicDB;
create table patients(
ortho_no INT AUTO_INCREMENT PRIMARY KEY,
    mr_no VARCHAR(20),
    p_name VARCHAR(100),
    age INT,
    gender ENUM('Male', 'Female', 'Other'),
    father_name VARCHAR(100),
    contact_no VARCHAR(15),
    cnic_no VARCHAR(15),
    address TEXT,
    weight FLOAT,
    diagnosis TEXT,
    operation TEXT,
    date_of_admission DATE
);
create table HistoryExamination (
ortho_no int ,
history text,
examination text,
foreign key (ortho_no) references patients (ortho_no)
);
create table OperationList (
ortho_no INT,
    mr_no VARCHAR(20),
    date_of_admission DATE,
    name VARCHAR(100),
    age INT,
    gender ENUM('Male', 'Female', 'Other'),
    father_name VARCHAR(100),
    diagnosis TEXT,
    operation TEXT,
    hb FLOAT,
    npo_time TIME,
    FOREIGN KEY (ortho_no) REFERENCES Patients(ortho_no)
);
create table SurgeryNotes (
ortho_no INT,
    diagnosis TEXT,
    operation TEXT,
    surgeon VARCHAR(100),
    operation_notes TEXT,
    post_op_orders TEXT,
    FOREIGN KEY (ortho_no) REFERENCES Patients(ortho_no)
);
create table DischargeCard(
ortho_no INT,
    mr_no VARCHAR(20),
    name VARCHAR(100),
    age INT,
    gender ENUM('Male', 'Female', 'Other'),
    father_name VARCHAR(100),
    date_of_admission DATE,
    date_of_operation DATE,
    date_of_discharge DATE,
    diagnosis TEXT,
    operation TEXT,
    surgeon VARCHAR(100),
    discharge_medication TEXT,
    follow_up_date DATE,
    FOREIGN KEY (ortho_no) REFERENCES Patients(ortho_no)
)