/*MY PROJECT(BASIC SCHOOL DATABASE MANAGEMENT SYSTEM (DBMS) )*/
--Retrieve teacher details and their respective Department_name
show user;

select t.teacher_id,t.teacher_first_name,t.teacher_last_name,d.department_name
from teachers t
join departments d
on t.department_id = d.department_id;

--Retrieve student details and their respective subject or subjects
select s.student_id,s.first_name,s.last_name,a.subject_name
from students s
join subjects a
on s.student_id = a.student_id;

select * from subjects;
select * from fees;
select * from students;
select * from departments;
select * from guardians;

--retrieve the names of students with the letter 'C' in their respective hometown 
select first_name,last_name,hometown 
from students
where hometown like 'C%';


--retrieve student details and their hometown
select student_id,first_name,LAST_NAME,HOMETOWN
from STUDENTS;

--retrieve student details as well as their fees_amount
select s.student_id,s.first_name,s.last_name,f.fees_amount
from students s
join fees f
on s.student_id = f.student_id
where f.fees_amount > 1000
order by s.student_id asc;

--retrieve the rounded fees amount
select round(avg(fees_amount)) as Average_fees_amount
from fees;

select student_id,first_name,last_name
from students
where FIRST_NAME like 'K%' and last_name like 'A%';

--show students with last_name = Boadi
select student_id,first_name,last_name
from students
where last_name = 'Boadi'
order by student_id asc;

--students with 'a' or 'i' in their last_name
select student_id,last_name
from students
where SUBSTR(last_name,3,1) in ('a','i');

--case statement for Departments Table
select 
department_id,
department_name,
case department_name
when 'Kindergaten' then 'Kids Unit'
when 'Lower Primary' then 'Childrens Unit'
when 'Upper Primary' then 'Pre-Teenager Unit'
when 'Junior High school' then 'Teenagers Unit'
when ' Pre Senior High School A' then 'Post Teenager Unit A'
when 'Pre Senior High School B' then 'Post Teenager Unit B'
else 'O'
end as Unit_description
from departments;

-- A procedure to get students details
create or replace procedure get_students_details(
p_student_id IN NUMBER
)
IS
stud_fn students.first_name%type;
stud_ln students.last_name%type;
stud_gen students.gender%type;
BEGIN
select first_name,last_name,gender
into stud_fn,stud_ln,stud_gen
from students
where student_id = p_student_id;
dbms_output.put_line('=====================================');
dbms_output.put_line('Student First_name: ' || stud_fn);
dbms_output.put_line('=====================================');
dbms_output.put_line('Student Last_name: ' || stud_ln);
dbms_output.put_line('=====================================');
dbms_output.put_line('Student Gender: ' || stud_gen);
dbms_output.put_line('======================================');
EXCEPTION
when no_data_found then
dbms_output.put_line('No Data Found');
when others then
dbms_output.put_line('An Error has occurred!');
end;
/

--Application Of the Procedure
set serveroutput on
BEGIN
    get_students_details(25);
End;
/

--FUNCTIONS
--Function to display students and their respective fees amount
create or replace function student_fees(stud_id IN s.students.student_id%type) return varchar
IS
 stud_fn students.first_name%type;
 stud_ln students.last_name%type;
 stud_fees_amount fees.fees_amount%type;
BEGIN
 select first_name,last_name,fees_amount
 into stud_fn,stud_ln,stud_fees_amount
 from Students 
 join fees 
 on students.student_id = fees.student_id
 where students.student_id = stud_id;
 return stud_fn||','||stud_ln||','||stud_fees_amount;
 End;
 /

--Application Of Function
set serveroutput on
DECLARE
 stud_id students.student_id%type;
 display varchar2(50);
BEGIN
 display:=student_fees(&stud_id);
 dbms_output.put_line(display);
End;
/

---create a function that would display the employee firstname, lastname and salary DELETE

create or replace function employee_salary(emp_id number)
return varchar
IS
  emp_fn employees.first_name%type;
  emp_ln employees.last_name%type;
  emp_salary employees.salary%type;
BEGIN
   select first_name,last_name,salary into emp_fn,emp_ln,emp_salary
   from employees
   where employee_id = emp_id;
   return emp_fn||','||emp_ln||','||emp_salary;
END;
/


set serveroutput ON
DECLARE
     emp_id employees.employee_id%type;
     display varchar2(50);
BEGIN
     display := employee_salary(&emp_id);
     dbms_output.put_line(display);
END;
/


--write a function to get the name details of students--

create or replace function student_function
return varchar
IS
stud_id students.student_id%type;
stud_fn students.first_name%type;
stud_ln students.last_name%type;

begin
select student_id,first_name,last_name
into stud_id,stud_fn,stud_ln
from students; 
return stud_id || ',' || stud_fn || ',' || stud_ln;
end;
/

SELECT *
FROM USER_ERRORS
WHERE NAME = 'STUDENT_FUNCTION';


/*Application of the Function*/
SET SERVEROUTPUT ON

DECLARE
   stud_id students.student_id%TYPE;
   Display VARCHAR2(4000); -- Use VARCHAR2 instead of VARCHAR
BEGIN
   -- Call the function and store the result in Display
   Display := student_function;

   -- Display the result
   DBMS_OUTPUT.PUT_LINE(Display);
END;
/


drop function STUDENT_FEES_FUNCTION;



SET SERVEROUTPUT ON
DECLARE
    stud_id students.student_id%TYPE;
    results VARCHAR2(300); 
BEGIN
    stud_id := &stud_id; 
    results := student_fees_function; 
    dbms_output.put_line(results);
END;
/

/*CURSORS TO RETRIEVE STUDENT DETAILS*/
Declare
    CURSOR c_students IS
        SELECT * FROM students
        WHERE first_name = 'Akua';
BEGIN
    FOR students IN c_students LOOP
        -- Process each student record here
        DBMS_OUTPUT.PUT_LINE(students.student_id || ' ' || students.first_name || ' ' || students.last_name || ' ' || students.occupation || ' ' || students.gender);
    END LOOP;
END;
/

/*TRIGGERS*/
set serveroutput on
create or replace trigger my_trigger
before alter or rename on  students
for each row
enable
Declare
    stud_gen students.gender%type;
Begin
    select gender 
    into stud_gen
    from students;
if stud_gen not in('Male','Female') then
raise_application_error(-20002,'You are not authorised to make any changes');
end if;
end;
/


set serveroutput on 
Declare
 stud_count number;
 dept_id students.department_id%type:=5;
Begin
while dept_id < 10
loop
select count(*)
into stud_count
from students
where department_id = dept_id;
dbms_output.put_line(dept_id || ',' || stud_count);
dept_id := dept_id + 1;
end loop;
end;
/

/*To retrieve Students and their respective guardian's Details*/
select * from guardians;

select s.student_id,s.first_name,s.last_name,g.guardian_first_name,g.guardian_last_name,g.occupation
from students s
join guardians g
on s.student_id = g.student_id
order by student_id asc;

/* Retrieve details from the class and departments table*/
select * from class;
select * from departments;

select c.class_name,c.class_seat_number,d.department_name
from class c 
join departments d
on c.department_id = d.department_id;

/*Retrieve student details and their corresponding class details*/
select s.student_id,s.first_name,s.last_name,c.class_name,c.class_seat_number
from students s
join class c
on s.class_id = c.class_id
where s.student_id < 35;

/*Using Raise_Application Error*/
set serveroutput ON

DECLARE
stud_id students.student_id%type;

BEGIN
stud_id := &stud_id;
if stud_id > 200 THEN
raise_application_error(-20001, 'Student_id is too high !');
end if;
end;
/

/*Using Exception type variable*/
set serveroutput on 

DECLARE
stud_fn students.first_name%type;

/*Using RAISE_APPLICATION_ERROR*/
SET serveroutput on

DECLARE
    stud_id students.student_id%type := &stud_id; 
    stud_fn students.first_name%type;
    stud_ln students.last_name%type;
BEGIN
    SELECT first_name, last_name
    INTO stud_fn, stud_ln
    FROM students
    WHERE student_id = stud_id;

    dbms_output.put_line(stud_fn);
    dbms_output.put_line('====================');
    dbms_output.put_line(stud_ln);
    if stud_id > 230 then 
    raise_application_error(-20003, 'Student_id does not exist in this DBMS');
end if;
END;
/


