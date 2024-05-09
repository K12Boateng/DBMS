
CREATE TABLE class (
    class_id                    VARCHAR2(3) NOT NULL,
    class_name                  VARCHAR2(30) NOT NULL,
    Number_of_seats           NUMBER(3)NOT NULL,
    department_id               VARCHAR2(3) NOT NULL
);

insert all 
       into class values('C1','Kindergaten one', 12,'D1')
       into class values ('C2','Kindergaten two',14,'D1')
       into class values('C3','Primary One',25,'D2')
       into class values('C4','Primary Two',21,'D2')
       into class values('C5','Primary Three',12,'D2')
       into class values('C6','Primary Four',43,'D3')
       into class values('C7','Primary Five',43,'D3')
       into class values ('C8', 'Primary Six', 30, 'D3')
       into class values('C9','Jhs one',13,'D3')
       into class values('C10','Jhs two',24,'D4')
       into class values('C11','Jhs three',14,'D4')  
       into class values ('C12', 'Pre SHS A', 28, 'D5')
       into class values ('C13', 'Pre SHS B', 20,'D6')
select * from dual;

ALTER TABLE class ADD CONSTRAINT class_pk PRIMARY KEY ( class_id );

CREATE TABLE departments (
    department_id     VARCHAR2(3) NOT NULL,
    department_name   VARCHAR2(30) NOT NULL
);

insert all
    into departments values('D1','Kindergaten')
    into departments values('D2','Lower Primary')
    into departments values('D3','Upper Primary')
    into departments values('D4','Junior High school')
    into departments values ('D5', ' Pre Senior High School A')
    into departments values ('D6', 'Pre Senior High School B')
select * from dual; 

ALTER TABLE departments ADD CONSTRAINT departments_pk PRIMARY KEY ( department_id );


CREATE TABLE guardians (
    guardian_id            VARCHAR2(3) NOT NULL,
    guardian_first_name   VARCHAR2(30) NOT NULL,
    guardian_last_name     VARCHAR2(30) NOT NULL,
    occupation             VARCHAR2(30) NOT NULL,
    student_id    NUMBER(3) NOT NULL
);

insert all 
      into guardians values('G1','Kumiwaa','Boadi','Trader',2)
      into guardians values('G2','Ernest','Ofori','Plumber',4)
      into guardians values('G3','Kwaku','Asante','Soldier',1)
      into guardians values('G4','Paul','Thompson','CustomsOffficer',6)
      into guardians values('G5','Gifty','Adu','Lecturer',8)
      into guardians values('G6','Bismark','Boadu','Lawyer',3)
      into guardians values('G7','John','Takyi','CarDealer',5)
      into guardians values('G8','Kwabena','Aseidu','BusinessMan',10)
      into guardians values('G9','Janet','Dankwah','Receptionist',7)
      into guardians values('G10','Ama','Antwi','Teacher',9)
      into guardians values('G11', 'Mary', 'Appiah', 'Nurse', 11)
      into guardians values('G12', 'Kwesi', 'Amponsah', 'Engineer', 13)
      into guardians values('G13', 'Grace', 'Adjei', 'Accountant', 12)
      into guardians values('G14', 'Sandra', 'Agyapong', 'Engineer', 9)
      into guardians values('G15', 'Kwame', 'Agyemang', 'Doctor', 10)
      into guardians values('G16', 'Emelia', 'Adams', 'Businesswoman', 101)  
      into guardians values('G17', 'Felix', 'Mensah', 'Banker', 12)
      into guardians values('G18', 'Esther', 'Bortey', 'Teacher', 13)
      into guardians values('G19', 'Felicity', 'Kwansah', 'Businesswoman', 14)
      into guardians values('G20', 'Kofi', 'Asante', 'Engineer', 15)
      into guardians values('G21', 'Abena', 'Appiah', 'Teacher', 16)
      into guardians values('G22', 'Yaw', 'Amoah', 'Accountant', 17)
      into guardians values('G23', 'Esi', 'Boadi', 'Nurse', 18)
      into guardians values('G24', 'Kwabena', 'Osei', 'Pilot', 19)
      into guardians values('G25', 'Ama', 'Kumah', 'Journalist', 20)
      into guardians values('G26', 'Kofi', 'Antwi', 'Entrepreneur', 21)
      into guardians values('G27', 'Gifty', 'Ejiri', 'Architect', 22)
      into guardians values('G28', 'Kwesi', 'Adu', 'Engineer', 23)
      into guardians values('G29', 'Akua', 'Mensah', 'Lawyer', 24)
      into guardians values('G30', 'Yaw', 'Amoako', 'Doctor', 25)
      into guardians values('G31', 'Esi', 'Gyan', 'Businesswoman', 26)
      into guardians values('G32', 'Kwabena', 'Agyapong', 'Teacher', 27)
      into guardians values('G33', 'Ama', 'Kwarko', 'Accountant', 28)
      into guardians values('G34', 'Kofi', 'Boateng', 'Banker', 29)
      into guardians values('G35', 'Abena', 'Osei', 'Nurse', 30)
      into guardians values('G36', 'Kwaku', 'Appiah', 'Engineer', 31)
      into guardians values('G37', 'Naa', 'Kwarley', 'Teacher', 32)
      into guardians values('G38', 'Yaw', 'Gyamfi', 'Businessman', 33)
      into guardians values('G39', 'Esi', 'Addo', 'Doctor', 34)
      into guardians values('G40', 'Kwabena', 'Boadi', 'Nurse', 35)
      into guardians values('G41', 'Ama', 'Osei', 'Lawyer', 36)
      into guardians values('G42', 'Kofi', 'Antwi', 'Accountant', 37)
      into guardians values('G43', 'Abigail', 'Turkson', 'Banker', 38)
      into guardians values('G44', 'Yaw', 'Adu', 'Pilot', 39)
      into guardians values('G45', 'Esi', 'Asare', 'Businesswoman', 40)
      into guardians values('G46', 'Kwabena', 'Gyan', 'Engineer', 41)
      into guardians values('G47', 'Akua', 'Appiah', 'Teacher', 42)
      into guardians values('G48', 'Yaw', 'Amponsah', 'Doctor', 43)
      into guardians values('G49', 'Aba', 'Agyei', 'Businesswoman', 44)
      into guardians values('G50', 'Kobbie', 'Owusu', 'Lawyer', 45)
      into guardians values('G51', 'Abena', 'Antwi', 'Accountant', 46)
      into guardians values('G52', 'Yaw', 'Boadi', 'Banker', 47)
      into guardians values('G53', 'Esi', 'Asante', 'Nurse', 48)
      into guardians values('G54', 'Kwame', 'Appiah', 'Engineer', 70)
      into guardians values('G55', 'Abena', 'Asante', 'Teacher', 71)
      into guardians values('G56', 'Yaw', 'Gyamfi', 'Businessman', 72)
      into guardians values('G57', 'Akua', 'Addo', 'Doctor', 73)
      into guardians values('G58', 'Kwabena', 'Boadi', 'Nurse', 74)
      into guardians values('G59', 'Ama', 'Osei', 'Lawyer', 75)
      into guardians values('G60', 'Kofi', 'Antwi', 'Accountant', 76)
      into guardians values('G61', 'Abena', 'Kwansah', 'Banker', 77)
      into guardians values('G62', 'Yabo', 'Adu', 'Pilot', 78)
      into guardians values('G63', 'Prscilla', 'Asante', 'Businesswoman', 79)
      into guardians values('G64', 'Kwabena', 'Gyan', 'Engineer', 80)
      into guardians values('G65', 'Akua', 'Appiah', 'Teacher', 81)
      into guardians values('G66', 'Yaw', 'Amoah', 'Doctor', 82)
      into guardians values('G67', 'Esi', 'Owusu', 'Businesswoman', 83)
      into guardians values('G68', 'Kwabena', 'Addo', 'Engineer', 84)
      into guardians values('G69', 'Amaka', 'Antwi', 'Teacher', 85)
      into guardians values('G70', 'Kwesi', 'Ampofo', 'Doctor', 86)
      into guardians values('G71', 'Adriana', 'Osei', 'Businesswoman', 87)
      into guardians values('G72', 'Yawo', 'Boadi', 'Engineer', 88)
      into guardians values('G73', 'Estella', 'Asante', 'Teacher', 89)
      into guardians values('G74', 'Kwabena', 'Appiah', 'Doctor', 90)
      into guardians values('G75', 'Ama', 'Kwame', 'Businesswoman', 91)
      into guardians values('G76', 'Kwesi', 'Amponsah', 'Engineer', 92)
      into guardians values('G77', 'Afia', 'Gyan', 'Teacher', 93)
      into guardians values('G78', 'Yaw', 'Amponsah', 'Doctor', 94)
      into guardians values('G79', 'Esi', 'Boadi', 'Businesswoman', 95)
      into guardians values('G80', 'Gideon', 'Kwame', 'Engineer', 96)
      into guardians values('G81', 'Ama', 'Amakye', 'Teacher', 97)
      into guardians values('G82', 'Kwesi', 'Amponsah', 'Doctor', 98)
      into guardians values('G83', 'Afia', 'Gyampo', 'Businesswoman', 99)
      into guardians values('G84', 'Yaw', 'Ampong', 'Engineer', 100)
      into guardians values('G85', 'Gideon', 'Kwame', 'Engineer', 96)
      into guardians values('G86', 'Ama', 'Amarley', 'Teacher', 120)
      into guardians values('G87', 'Kwesi', 'Amponsah', 'Doctor', 108)
      into guardians values('G88', 'Afia', 'Gyimah', 'Businesswoman', 109)
      into guardians values('G89', 'Yaw', 'Amponsah', 'Engineer', 121)
      into guardians values('G90', 'Kofi', 'Asante', 'Accountant', 95)
      into guardians values('G91', 'Esi', 'Annan', 'Nurse', 123)
      into guardians values('G92', 'Kwame', 'Osei', 'Lawyer', 124)
      into guardians values('G93', 'Adwoa', 'Frimpong', 'Architect', 126)
      into guardians values('G94', 'Yaw', 'Boadu', 'Businessman', 122)
select * from dual;


CREATE UNIQUE INDEX guardians__idx ON
    guardians (students_student_id ASC );
 
ALTER TABLE guardians ADD CONSTRAINT guardians_pk PRIMARY KEY ( guardian_id );

CREATE TABLE students (
    student_id                        NUMBER(3) NOT NULL,
    first_name                        VARCHAR2(30) NOT NULL,
    last_name                         VARCHAR2(30) NOT NULL,
    gender                            VARCHAR2(30) NOT NULL,
    hometown                          VARCHAR2(30) NOT NULL,
    class_id                    VARCHAR2(3) NOT NULL, 
    department_id   VARCHAR2(3) NOT NULL
);

insert all 
           into students values(1,'Kofi','Owusu','Male','Oda','C2','D1')
           into students values(2,'Lizzy','Mensah','Female','Koforidua','C3','D2')
           into students values(3,'Michael','Antwi','Male','Aburi','C4','D2')
           into students values(4,'Thomas','Frimpong','Male','Sunyani','C6','D3')
           into students values(5,'Mabel','Badu','Female','Techiman','C8','D3')
           into students values(6,'Regina','Yeboah','Female','Swedro','C10','D4')
           into students values(7,'Priscilla','Koranteng','Female','Abetifi','C7','D3')
           into students values(8,'Ernest','Opoku','Male','Agona','C5','D2')
           into students values(9,'Kwaku','Baidoo','Male','Teshie','C1','D1')
           into students values(10,'Mariama','Atenge','Female','Tamale','C9','D4')
           into students values(11, 'Ama', 'Kwakye','Female','Tamale', 'C12', 'D6')
           into students values(12, 'Kwame', 'Amoateng','Male', 'Accra', 'C13', 'D6')
           into students values(13, 'Kofi', 'Addo','Male', 'Cape Coast', 'C10', 'D5')
           into students values(14, 'Yaw', 'Konadu','Male', 'Koforidua', 'C12', 'D6')
           into students values(15, 'Afia', 'Gyan','Female', 'Kumasi', 'C11', 'D6')
           into students values(16, 'Emmanuel', 'Mensah','Male', 'Tema', 'C13', 'D6')
           into students values(17, 'Abena', 'Addo','Female', 'Accra', 'C9', 'D5')
           into students values(18, 'Kwabena', 'Kwame','Male', 'Takoradi', 'C10', 'D5')
           into students values(19, 'Esi', 'Osei','Female', 'Kumasi', 'C12', 'D6')
           into students values(20, 'Kwadwo', 'Amoah','Male', 'Cape Coast', 'C13', 'D1')
           into students values(21, 'Akua', 'Fosu','Female', 'Sunyani', 'C11', 'D6')
           into students values(22, 'Yaw', 'Agyei','Male', 'Tema', 'C9', 'D5')
           into students values(23, 'Gifty', 'Asante','Female', 'Koforidua', 'C10', 'D5')
           into students values (24, 'Kwesi', 'Ampofo','Male', 'Accra', 'C11', 'D6')
           into students values (25, 'Ama', 'Owusu','Female', 'Kumasi', 'C12', 'D2')
           into students values (26, 'Kofi', 'Addo','Male', 'Teshie', 'C9', 'D5')
           into students values (27, 'Esi', 'Boateng','Female', 'Cape Coast', 'C10', 'D5')
           into students values (28, 'Yaw', 'Gyan','Male', 'Koforidua', 'C4', 'D4')
           into students values (29, 'Afia', 'Mensah','Female', 'Koforidua', 'C12', 'D3')
           into students values (30, 'Emmanuel', 'Amoah','Male', 'Accra', 'C13', 'D1')
           into students values (31, 'Abena', 'Addo','Female', 'Sunyani', 'C2', 'D5')
           into students values (32, 'Kwabena', 'Agyei','Male', 'Takoradi', 'C10', 'D5')
           into students values (33, 'Awurasi', 'Asante','Female', 'Koforidua', 'C11', 'D2')
           into students values (34, 'Kwesi', 'Boadi','Male', 'Accra', 'C12', 'D6')
           into students values (35, 'Ama', 'Kwame','Female', 'Kumasi', 'C13', 'D4')
           into students values (36, 'Kofi', 'Addo','Male', 'Tema', 'C9', 'D2')
           into students values (37, 'Esi', 'Coffie','Female', 'Cape Coast', 'C10', 'D1')
           into students values (38, 'Yaw', 'Gyan','Male', 'Koforidua', 'C11', 'D2')
           into students values (39, 'Afia', 'Mintah','Female', 'Kumasi', 'C2', 'D3')
           into students values (40, 'Emmanuella', 'Aku','Female', 'Accra', 'C13', 'D4')
           into students values (41, 'Aba', 'Addo','Female', 'Sunyani', 'C9', 'D5')
           into students values (42, 'Kwaku', 'Agyei','Male', 'Takoradi', 'C10', 'D3')
           into students values (43, 'Abigail', 'Asante','Female', 'Koforidua', 'C11', 'D6')
           into students values(45, 'Kwabena', 'Owusu','Male', 'Kumasi', 'C13', 'D1')
           into students values(46, 'Kwame', 'Adjei','Male', 'Ho', 'C9', 'D5')
           into students values(47, 'Ama', 'Mensah','Female', 'Cape Coast', 'C10', 'D5')
           into students values(48, 'Kwesi', 'Addo','Male', 'Koforidua', 'C11', 'D6')
           into students values(49, 'Akua', 'Gyan','Female', 'Sunyani', 'C12', 'D3')
           into students values(50, 'Yaw', 'Amponsah','Male', 'Accra', 'C13', 'D2') 
           into students values(61, 'Kwesi', 'Amoako','Male', 'Kumasi', 'C1', 'D1')
           into students values(62, 'Afia', 'Gyan','Female', 'Tarkwa', 'C1', 'D1')
           into students values(63, 'Yaw', 'Amponsah','Male', 'Cape Coast', 'C1', 'D1')
           into students values(64, 'Ama', 'Kwakye','Female', 'Prestea', 'C2', 'D1')
           into students values(65, 'Kwesi', 'Amponsah','Male', 'Tema', 'C2', 'D1')
           into students values(66, 'Esi', 'Boateng','Female', 'Cape Coast', 'C2', 'D1')
           into students values(67, 'Kwabena', 'Kwartey','Male', 'Sowutuom', 'C3', 'D1')
           into students values(68, 'Akua', 'Fosu','Female', 'Axim', 'C3', 'D1')
           into students values(69, 'Yaw', 'Agyei','Male', 'Cape Coast', 'C3', 'D1')
           into students values(51, 'Kwesi', 'Annan','Male', 'Kumasi', 'C12', 'D6')
           into students values(52, 'Afia', 'Osei','Female', 'Tema', 'C9', 'D5')
           into students values(53, 'Yaw', 'Gyan','Male', 'Cape Coast', 'C10', 'D5')
           into students values(54, 'Ama', 'Addo','Female', 'Koforidua', 'C11', 'D4')
           into students values(55, 'Kwabena', 'Gyamfi','Male', 'Sunyani', 'C12', 'D3')
           into students values(56, 'Akua', 'Boadi','Female', 'Accra', 'C13', 'D2')
           into students values(57, 'Yaw', 'Adu','Male', 'Kumasi', 'C9', 'D5')
           into students values(58, 'Esi', 'Asante','Female', 'Accra', 'C10', 'D5')
           into students values(59, 'Kwabena', 'Appiah','Male', 'Cape Coast', 'C11', 'D4')
           into students values(60, 'Ama', 'Kwarteng','Female', 'Koforidua', 'C12', 'D3')
           into students values(70, 'Kofi', 'Asare','Male', 'Kumasi', 'C4', 'D2')
           into students values(71, 'Afia', 'Abugari','Female', 'Tamale', 'C4', 'D2')
           into students values(72, 'Yaw', 'Gyamfi','Male', 'Cape Coast', 'C4', 'D2')
           into students values(73, 'Ama', 'Boadi','Female', 'Ejisu', 'C5', 'D2')
           into students values(74, 'Kwabena', 'Gyan','Male', 'Ejisu', 'C5', 'D2')
           into students values(75, 'Akua', 'Appiah','Female', 'Cape Coast', 'C5', 'D2')
           into students values(76, 'Yaw', 'Amoah','Male', 'Kumasi', 'C6', 'D3')
           into students values(77, 'Esi', 'Owusu','Female', 'Tema', 'C6', 'D3')
           into students values(78, 'Kwabena', 'Addo','Male', 'Agona Swedro', 'C6', 'D3')
           into students values(79, 'Ama', 'Antwi','Female', 'Kumasi', 'C7', 'D3')
           into students values(80, 'Kwesi', 'Ampofo','Male', 'Tema', 'C7', 'D3')
           into students values(81, 'Afia', 'Osei','Female', 'Cape Coast', 'C7', 'D3')
           into students values(82, 'Yaw', 'Boadi','Male', 'Kumasi', 'C8', 'D4')
           into students values(83, 'Esi', 'Asante','Female', 'Asante Bekwai', 'C8', 'D4')
           into students values(84, 'Kwabena', 'Appiah','Male', 'Asante Bekwai', 'C8', 'D4')
           into students values(85, 'Ama', 'Kwame','Female', 'Kumasi', 'C9', 'D4')
           into students values(86, 'Kwesi', 'Ampong','Male', 'Ada', 'C9', 'D4')
           into students values(87, 'Afia', 'Gyan','Female', 'Teshie', 'C9', 'D4')
           into students values(88, 'Yaw', 'Oppong','Male', 'Kumasi', 'C10', 'D5')
           into students values(89, 'Esi', 'Boateng','Female', 'Techiman', 'C10', 'D4')
           into students values(90, 'Kwabena', 'Kumi','Male', 'Cape Coast', 'C10', 'D4')
           into students values(91, 'Amera', 'Kwakye','Female', 'Kumasi', 'C11', 'D4')
           into students values(92, 'Kwesi', 'Amponsah','Male', 'Takoradi', 'C11', 'D4')
           into students values(93, 'Afia', 'Gyampo','Female', 'Hohoe', 'C11', 'D4')
           into students values(94, 'Yaw', 'Ansah','Male', 'Kumasi', 'C12', 'D5')
           into students values(95, 'Esi', 'Boateng','Female', 'Koforidua', 'C12', 'D5')
           into students values(96, 'Kwabena', 'Odame','Male', 'Cape Coast', 'C12', 'D5')
           into students values(97, 'Amaka', 'Kwakye','Female', 'Kumasi', 'C13', 'D6')
           into students values(98, 'Kwesi', 'Brobbey','Male', 'Aburi', 'C13', 'D6')
           into students values(99, 'Afia', 'Gyimah','Female', 'Navrongo', 'C13', 'D6')
           into students values(100, 'Yawo', 'Amponsah','Male', 'Axim', 'C4', 'D2')
           into students values(101, 'Asiama', 'Kuma','Male', 'Bawku', 'C4', 'D2')
           into students VALUES(102, 'Kwame', 'Adu','Male', 'Accra', 'C4', 'D2')
           into students values(103, 'Abena', 'Fosu','Female', 'Koforidua', 'C1', 'D1')
           into students VALUES(104, 'Kofi', 'Osei','Male', 'Tema', 'C5', 'D2')
           into students VALUES(105, 'Ama', 'Mensah','Female', 'Cape Coast', 'C5', 'D2')
           into students VALUES(106, 'Yaw', 'Boateng','Male', 'Sunyani', 'C1', 'D1')
           into students VALUES(107, 'Esi', 'Addo','Female', 'Ho', 'C6', 'D3')
           into students VALUES(108, 'Kwabena', 'Darko','Male', 'Takoradi', 'C1', 'D1')
           into students VALUES(109, 'Adwoa', 'Agyeman','Female', 'Tamale', 'C7', 'D3')
           into students VALUES(110, 'Kofi', 'Boahen','Male', 'Wa', 'C7', 'D3')
           into students VALUES(111, 'Ama', 'Ansaba','Female', 'Techiman', 'C1', 'D1')
           into students VALUES(112, 'Kwesi', 'Appiah','Male', 'Bolgatanga', 'C8', 'D3')
           into students VALUES(113, 'Yaa', 'Owusuaa','Female', 'Accra', 'C12', 'D5')
           into students VALUES(114, 'Kofi', 'Annor','Male', 'Kumasi', 'C9', 'D4')
           into students VALUES(115, 'Akua', 'Mensah','Female', 'Cape Coast', 'C9', 'D4')
           into students VALUES(116, 'Kwame', 'Annan','Male', 'Tema', 'C9', 'D4')
           INTO students VALUES(117, 'Adjoa', 'Boateng','Female', 'Sunyani', 'C10', 'D4')
           INTO students VALUES(118, 'Yaw', 'Osei','Male', 'Koforidua', 'C10', 'D4')
           INTO students VALUES(119, 'Abena', 'Adu','Female', 'Kumasi', 'C2', 'D1')
           INTO students VALUES(120, 'Kwesi', 'Frimpong','Male', 'Tema', 'C11', 'D4')
           INTO students VALUES(121, 'Ama', 'Asante','Female', 'Accra', 'C11', 'D4')
           INTO students VALUES(122, 'Kofi', 'Owusu','Male', 'Kumasi', 'C2', 'D1')
           INTO students VALUES(123, 'Akosua', 'Agyemang','Female', 'Cape Coast', 'C12', 'D5')
           INTO students VALUES(124, 'Kwabena', 'Addo','Male', 'Ho', 'C12', 'D5')
           INTO students VALUES(125, 'Abena', 'Boateng','Female', 'Bolgatanga', 'C13', 'D6')
           INTO students VALUES(126, 'Yaw', 'Mensah','Male', 'Accra', 'C13', 'D6')
select * from dual;

ALTER TABLE students ADD CONSTRAINT students_pk PRIMARY KEY ( student_id );

CREATE TABLE subjects (
    subject_id            VARCHAR2(3) NOT NULL,
    subject_name          VARCHAR2(30) NOT NULL,
    student_id   VARCHAR2(3) NOT NULL
);

insert all 
    into subjects values('S1','English',2)
    into subjects values('S2','Mathematics',3)
    into subjects values('S3','Social Studies',4)
    into subjects values('S4','Creative Arts',7)
    into subjects values('S5','RME',5)
    into subjects values ('S6', 'Science', 11)
    into subjects values ('S7', 'History', 12)
    into subjects values ('S8', 'Geography', 13)
    into subjects values('S90', 'Education', 32)
    into subjects values('S10', 'French', 33)
    into subjects values('S11', 'Science', 54)
    into subjects values('S13', 'Ecology', 15)
    into subjects values('S40', 'Arts', 56)
    into subjects values('S22', 'Basic Maths', 67)
    into subjects values('S15', 'BDT', 58)
    into subjects values('S32', 'Environmental Studies', 69)
    into subjects values('S18', 'Music', 110)
    into subjects values('S12', 'Literature', 31)
    into subjects values('S9', 'Physical Education', 112)
    into subjects values('S34', 'French', 53)
    into subjects values('S93', 'Ecomath', 26)
    into subjects values('S24', 'Matrix', 77)
    into subjects values('S20', 'Ecms', 88)
    into subjects values('S30', 'Religious Studies', 29)
    into subjects values('S61', 'Music', 30)
    into subjects values('S19', 'Literature', 21)
    into subjects values('S87', 'Education', 22)
    into subjects values('S45', 'French', 23)
    into subjects values('S16', 'Basic Science', 24)
    into subjects values('S88', 'Global Studies', 25)
select * from Dual;

ALTER TABLE subjects ADD CONSTRAINT subjects_pk PRIMARY KEY ( subject_id );

CREATE TABLE teachers (
    teacher_id                  VARCHAR2(3) NOT NULL,
    teacher_first_name          VARCHAR2(30) NOT NULL,
    teacher_last_name           VARCHAR2(30) NOT NULL,
    contact                     NUMBER(30) NOT NULL,
    department_id   VARCHAR2(3) NOT NULL
);

insert all 
into teachers values('T1','Michael','Oduro',0123143424,'D1')
into teachers values('T2','Esther','Kumi',0123424243,'D2')
into teachers values('T3','Abigail','Antwi',0231334345,'D4')
into teachers values('T4','Terry','Wilson',0143264327,'D4')
into teachers values('T5','Agnes','Howard',0234345485,'D2')
into teachers values('T6','Jeremy','Parker',0989237325,'D3')
into teachers values ('T7', 'Gloria', 'Ampofo', 0234323489, 'D6')
into teachers values ('T8', 'Emmanuel', 'Asare', 0542312389, 'D5')
into teachers values ('T9', 'Patricia', 'Owusu', 0204301200, 'D4')
select * from Dual;

ALTER TABLE teachers ADD CONSTRAINT teachers_pk PRIMARY KEY ( teacher_id );

ALTER TABLE class
    ADD CONSTRAINT class_departments_fk FOREIGN KEY ( department_id )
        REFERENCES departments ( department_id );

ALTER TABLE fees
    ADD CONSTRAINT fees_students_fk FOREIGN KEY ( student_id )
        REFERENCES students ( student_id );

ALTER TABLE guardians
    ADD CONSTRAINT guardians_students_fk FOREIGN KEY ( students_student_id )
        REFERENCES students ( student_id );

ALTER TABLE guardians
    ADD CONSTRAINT guardians_students_fkv2 FOREIGN KEY ( student_id1 )
        REFERENCES students ( student_id );

ALTER TABLE students
    ADD CONSTRAINT students_class_fk FOREIGN KEY ( class_id,
    department_id )
        REFERENCES class ( class_id,
        department_id );

ALTER TABLE subjects
    ADD CONSTRAINT subjects_students_fk FOREIGN KEY ( student_id )
        REFERENCES students ( student_id );

ALTER TABLE teachers
    ADD CONSTRAINT teachers_departments_fk FOREIGN KEY ( department_id )
        REFERENCES departments ( department_id );
