Solution1 : 

select roll_number, name from student_information WHERE
advisor in 
(
  select employee_id from faculty_information where gender = 'M' and 
  salary > 15000
) or 
advisor in 
(
  select employee_id from faculty_information where gender = 'F' and 
  salary > 20000
)  ;


Solution 2:
select roll_number, name from student_information si
left join  faculty_information fi on fi.employee_id = si.advisior
where ( gender = 'F' and   salary > 20000) or ( gender = 'M' and   salary > 15000)
