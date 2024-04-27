#Creating Database

Create database medical;

use medical;

#creating patients table

create table patients (
patient_id int primary key,
patient_name varchar(50),
date_of_birth date,
gender varchar(10),
address varchar(50),
phone_number varchar(12)
);

insert into patients(patient_id, patient_name, date_of_birth, gender, address, phone_number) values 
(1, 'John Smith', '1980-05-15', 'Male', '123 Main St, Anytown', '123-456-7890'),
(2, 'Emily Brown', '1975-09-20', 'Female', '456 Elm St, Anytown', '234-567-8901'),
(3, 'David Johnson', '1992-02-10', 'Male', '789 Oak St, Anytown', '345-678-9012'),
(4, 'Sarah Adams', '1988-07-12', 'Female', '567 Maple St, Anytown', '456-789-0123'),
(5, 'Michael Clark', '1970-03-25', 'Male', '890 Pine St, Anytown', '567-890-1234'),
(6, 'Jessica White', '1985-11-30', 'Female', '678 Cedar St, Anytown', '678-901-2345'),
(7, 'Robert Taylor', '1995-01-05', 'Male', '901 Oakwood St, Anytown', '789-012-3456'),
(8, 'Jennifer Lee', '1982-08-18', 'Female', '234 Cedar Lane, Anytown', '890-123-4567'),
(9, 'Christopher Brown', '1978-06-23', 'Male', '345 Oak Lane, Anytown', '901-234-5678'),
(10, 'Amanda Wilson', '1990-04-17', 'Female', '456 Pine Lane, Anytown', '012-345-6789'),
(11, 'Daniel Martinez', '1983-09-03', 'Male', '567 Maple Lane, Anytown', '123-456-7890'),
(12, 'Ashley Harris', '1993-12-28', 'Female', '678 Cedar Lane, Anytown', '234-567-8901'),
(13, 'Matthew Thompson', '1976-02-14', 'Male', '789 Oakwood Lane, Anytown', '345-678-9012'),
(14, 'Elizabeth Rodriguez', '1987-10-09', 'Female', '890 Elm Lane, Anytown', '456-789-0123'),
(15, 'Kevin Wright', '1981-05-22', 'Male', '901 Pine Lane, Anytown', '567-890-1234'),
(16, 'Samantha King', '1974-08-07', 'Female', '123 Cedar Lane, Anytown', '678-901-2345'),
(17, 'Joshua Scott', '1994-03-12', 'Male', '234 Oakwood Lane, Anytown', '789-012-3456'),
(18, 'Lauren Turner', '1986-11-19', 'Female', '345 Maple Lane, Anytown', '890-123-4567'),
(19, 'Justin Hall', '1977-07-02', 'Male', '456 Pine Lane, Anytown', '901-234-5678'),
(20, 'Megan Baker', '1991-01-15', 'Female', '567 Elm Lane, Anytown', '012-345-6789');

Select * from patients;


#creating doctors table

create table doctors(
doctor_id int primary key,
doctor_name varchar(200),
specialization varchar(200),
department varchar(200)
);

insert into doctors(doctor_id,doctor_name,specialization,department) values 
(201, 'Dr. Sarah Jones', 'Pulmonology', 'Internal Medicine'),
(202, 'Dr. Michael Lee', 'Endocrinology', 'Endocrinology'),
(203, 'Dr. Linda Smith', 'Cardiology', 'Cardiology'),
(204, 'Dr. Christopher Brown', 'Neurology', 'Neurology'),
(205, 'Dr. Jennifer Taylor', 'Pediatrics', 'Pediatrics'),
(206, 'Dr. Robert Johnson', 'Oncology', 'Oncology'),
(207, 'Dr. Amanda Martinez', 'Dermatology', 'Dermatology'),
(208, 'Dr. David Wilson', 'Gastroenterology', 'Gastroenterology'),
(209, 'Dr. Samantha Miller', 'Rheumatology', 'Rheumatology'),
(210, 'Dr. Daniel Thomas', 'Nephrology', 'Nephrology'),
(211, 'Dr. Emily Harris', 'Psychiatry', 'Psychiatry'),
(212, 'Dr. Matthew Adams', 'Urology', 'Urology'),
(213, 'Dr. Lauren Scott', 'Ophthalmology', 'Ophthalmology'),
(214, 'Dr. Justin Turner', 'Orthopedics', 'Orthopedics'),
(215, 'Dr. Ashley King', 'Geriatrics', 'Geriatrics'),
(216, 'Dr. Megan Clark', 'Pulmonology', 'Internal Medicine'),
(217, 'Dr. Kevin White', 'Endocrinology', 'Endocrinology'),
(218, 'Dr. Samantha Garcia', 'Cardiology', 'Cardiology'),
(219, 'Dr. Joshua Martin', 'Neurosurgery', 'Neurosurgery'),
(220, 'Dr. Elizabeth Baker', 'Oncology', 'Oncology');


select * from doctors;

#creating  medical records table

create table medical_records(
record_id int primary key,
patient_id int,
admission_date date,
discharge_date date,
diagnosis varchar(200),
treatment varchar(200),
doctor_id int,
foreign key (patient_id) references patients(patient_id),
foreign key (doctor_id) references doctors(doctor_id)
);

insert into medical_records(record_id,patient_id,admission_date,discharge_date,diagnosis,treatment,doctor_id) values
(101, 1, '2023-01-05', '2023-01-10', 'Pneumonia', 'Antibiotics', 201),
(102, 2, '2023-02-10', '2023-02-15', 'Diabetes', 'Insulin therapy', 202),
(103, 3, '2023-03-20', '2023-03-25', 'Hypertension', 'ACE inhibitors', 203),
(104, 4, '2023-04-12', '2023-04-20', 'Influenza', 'Antiviral medication', 201),
(105, 5, '2023-05-08', '2023-05-15', 'Asthma', 'Bronchodilators', 202),
(106, 6, '2023-06-18', '2023-06-25', 'Arthritis', 'NSAIDs', 203),
(107, 7, '2023-07-03', '2023-07-10', 'Migraine', 'Triptans', 201),
(108, 8, '2023-08-25', '2023-09-02', 'Depression', 'SSRI', 202),
(109, 9, '2023-09-10', '2023-09-18', 'Anxiety', 'Benzodiazepines', 203),
(110, 10, '2023-10-22', '2023-10-30', 'Allergies', 'Antihistamines', 201),
(111, 11, '2023-11-05', '2023-11-12', 'Gastritis', 'Proton pump inhibitors', 202),
(112, 12, '2023-12-15', '2023-12-22', 'COPD', 'Bronchodilators', 203),
(113, 13, '2024-01-02', '2024-01-09', 'Insomnia', 'Sedatives', 201),
(114, 14, '2024-02-08', '2024-02-15', 'Osteoporosis', 'Bisphosphonates', 202),
(115, 15, '2024-03-17', '2024-03-24', 'Thyroid disorder', 'Thyroid hormone therapy', 203),
(116, 16, '2024-04-09', '2024-04-16', 'Sinusitis', 'Decongestants', 201),
(117, 17, '2024-05-23', '2024-05-30', 'Hypothyroidism', 'Levothyroxine', 202),
(118, 18, '2024-06-30', '2024-07-07', 'Eczema', 'Topical corticosteroids', 203),
(119, 19, '2024-07-14', '2024-07-21', 'Psoriasis', 'Phototherapy', 201),
(120, 20, '2024-08-26', '2024-09-02', 'Obesity', 'Diet and exercise', 202);

select * from medical_records;

-------------------------------------------------------------------------------------------------------------------

# BASIC LEVEL ANALYSIS 

#1) Retrieve the names and genders of all patients.
select patient_name,gender from patients;

#2) List the unique diagnoses recorded in the medical records.
select distinct diagnosis from medical_records;

#3) Count the total number of patients in the database.
select count(*) as count_of_patients from patients;

#4) Find the oldest patient in the database.
select patient_id,patient_name,date_of_birth from patients
order by date_of_birth limit 1;

#5) Display the address and phone number of the patient with ID 7.
select patient_id,address,phone_number from patients
where patient_id=7;

#6) Retrieve the names and specializations of all doctors.
select doctor_name,specialization from doctors;

#7) Calculate the average length of hospital stay for all patients.
select patient_id, round(avg(datediff(discharge_date,admission_date)),2) as avg_length_of_stay
from medical_records
group by patient_id
order by avg_length_of_stay;

#8) Count the number of male and female patients separately.
select  gender,count(*) as gender_count from patients
group by gender;

#9) Find the doctor who treated the most patients.
select doctor_id,count(*) as patients_treated from medical_records
group by doctor_id
order by patients_treated desc limit 1;

#10) List all patients whose names start with 'J'.
select patient_name from patients where patient_name like 'J%';

---------------------------------------------------------------------------------------------------------------------------

# INTERMEDIATE LEVEL ANALYSIS 

#11) Retrieve the names of the patients along with their admission and discharge dates.
select patient_name,admission_date,discharge_date from patients
inner join medical_records on patients.patient_id=medical_records.patient_id;

#12) Calculate the total number of medical records in the database.
select count(record_id) as total_count from medical_records;

#13) List the patients who were diagnosed with hypertension or diabetes.
select p.patient_name, mr.diagnosis from patients as p
inner join medical_records as mr on p.patient_id= mr.patient_id
where mr.diagnosis in ('hypertension', 'diabetes');

#14) Find the average age of patients in the database.
select avg(year(current_date)- year(date_of_birth)) as avg_age from patients;

#15) Display the doctors who treated patients admitted in January 2023.
select d.doctor_name,mr.admission_date from doctors as d
inner join medical_records as mr on d.doctor_id=mr.doctor_id
where year(mr.admission_date)=2023 and month(mr.admission_date)=1;

#16) Calculate the total number of patients treated by each doctor.
select doctor_id, count(patient_id) as patients_treated from medical_records
group by doctor_id;

#17) List the patients who were treated by doctors specializing in Cardiology.
select p.patient_name from patients as p
inner join medical_records as mr on p.patient_id=mr.patient_id
inner join doctors as d on d.doctor_id=mr.doctor_id
where d.specialization='cardiology';

#18) Find the patient with the longest hospital stay duration.
select p.patient_name,mr.admission_date,mr.discharge_date from patients as p
inner join medical_records as mr on p.patient_id=mr.patient_id
order by datediff(mr.discharge_date,mr.admission_date) desc limit 1;

#19) Display the top 5 most common diagnoses recorded in the medical records.
select diagnosis, count(*) as count_diagnosis from medical_records
group by diagnosis
order by count_diagnosis desc limit 5;

#20) List the patients who were treated by doctors with names starting with 'Dr. S'.
select p.patient_name from patients as p
inner join medical_records as mr on p.patient_id=mr.patient_id
inner join doctors as d on d.doctor_id=mr.doctor_id
where d.doctor_name like "Dr. S%";


---------------------------------------------------------------------------------------------------------------------------

# ADVANCED LEVEL ANALYSIS 

#21) Calculate the percentage of male and female patients in the database.
select gender, count(*) * 100 / (select count(*) from patients) as pct_cnt
from patients
group by gender;

#22) Find the patient with the highest number of medical records.
select p.patient_id, p.patient_name, count(*) as count_of_records from patients as p
inner join medical_records as mr on p.patient_id=mr.patient_id
group by p.patient_id
order by count_of_records desc limit 1;

#23) List the top 3 doctors who treated the most patients.
select d.doctor_name,count(mr.patient_id) as count_of_patients from doctors as d
inner join medical_records as mr on d.doctor_id=mr.doctor_id
group by doctor_name
order by count_of_patients desc limit 3;

#24) Calculate the average length of hospital stay for each diagnosis.
select distinct diagnosis,avg(datediff(discharge_date,admission_date)) as avg_length from medical_records
group by diagnosis;

#25) Rank patients based on the number of medical records they have, from highest to lowest.
select patient_id,count(*) as record_count, rank() over (order by count(*) desc) as record_rank 
from medical_records 
group by patient_id;

#26) Display the patients who spent the most time in the hospital.
select p.patient_id,p.patient_name, sum(datediff(mr.discharge_date,mr.admission_date)) as most_time_spent from patients as p
inner join medical_records as mr on p.patient_id=mr.patient_id
group by p.patient_id
order by most_time_spent desc;

#27) List the patients who were treated by doctors specializing in Cardiology or Pulmonology.
select p.patient_name from patients as p
inner join medical_records as mr on p.patient_id=mr.patient_id
inner join doctors as d on d.doctor_id=mr.doctor_id
where d.specialization in ('Cardiology','pulmonology')
group by patient_name;

#28) Find the doctor who treated the most patients diagnosed with Diabetes.
select d.doctor_name,count(*) as pt_cnt from doctors as d
inner join medical_records as mr on d.doctor_id=mr.doctor_id
where mr.diagnosis='diabetes'
group by d.doctor_name
order by pt_cnt desc limit 1;

#29) Calculate the total number of patients treated by each doctor, including those with no patients.
select d.doctor_name,count(mr.patient_id) as patient_count from doctors as d
left join medical_records as mr on d.doctor_id=mr.doctor_id
group by d.doctor_name; 

-- Recreate a dataset for the next questions--

alter table medical_records
add column hospital_charges varchar(20) not null;

INSERT INTO medical_records (record_id, patient_id, admission_date, discharge_date, diagnosis, treatment, doctor_id,hospital_charges)
VALUES (121, 1, '2024-01-15', '2024-01-20', 'Pneumonia', 'Antibiotics', 201,150),
(122, 1, '2024-02-10', '2024-02-15', 'Pneumonia', 'Antibiotics', 201,300),
(123, 2, '2024-03-20', '2024-03-25', 'Diabetes', 'Insulin therapy', 202,80),
(124, 2, '2024-04-12', '2024-04-15', 'Diabetes', 'Insulin therapy', 202,40),
(125, 3, '2024-05-08', '2024-05-15', 'Asthma', 'Bronchodilators', 202,90),
(126, 3, '2024-06-18', '2024-06-20', 'Asthma', 'Bronchodilators', 202,200),
(127, 4, '2024-07-03', '2024-07-10', 'Migraine', 'Triptans', 203,250),
(128, 4, '2024-07-25', '2024-07-30', 'Migraine', 'Triptans', 203,100);

#30) Identify patients who have been readmitted within 30 days of discharge.
select mr1.patient_id,p.patient_name,
mr1.admission_date as readmission_date,
mr1.discharge_date as readmission_discharge_date,
mr2.admission_date as previous_admission_date
from medical_records as mr1
inner join medical_records as mr2 on mr1.patient_id=mr2.patient_id
and mr1.admission_date > mr2.discharge_date
and datediff(mr1.admission_date,mr2.discharge_date) <=30
JOIN 
    Patients p ON mr1.patient_id = p.patient_id
ORDER BY 
    mr1.patient_id, mr1.admission_date;

#31) Calculate the average length of hospital stay by month for the past year.
select year(admission_date) as year,
month(admission_date) as month,
avg(datediff(discharge_date,admission_date)) as avg_length_of_stay from medical_records
where admission_date> date_sub(current_date, interval 1 year)
group by admission_date, discharge_date
order by year, month;

#32) List patients who have been admitted to the hospital more than once in the past year.
select p.patient_id,p.patient_name,count(*) as admissions from patients as p
join medical_records mr on mr.patient_id=p.patient_id
where mr.admission_date>=date_sub(current_date, interval 1 year)
group by p.patient_id
having count(*)>1;

#33) Calculate the percentage change in the number of patients admitted each month compared to the previous month.
select year(admission_date) as year,
month(admission_date) as month,
count(*) as admissions,
((count(*)-lag(count(*),1,0) over (order by year(admission_date),month(admission_date)))*100.0) / lag(count(*),1,1) over(order by year(admission_date),month(admission_date)) as percentage_change
from medical_records
where admission_date>=date_sub(current_date, interval 1 year)
group by year(admission_date), month(Admission_date);
    
