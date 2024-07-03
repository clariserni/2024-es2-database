-- Esercizi solo con SELECT
-- 1. Seleziona tutti i professori dal dipartimento di Informatica.
-- res: 

select *
from professor 
where department like 'Informatica';

-- 2. Elenca tutti gli studenti iscritti nell'anno 2021.
-- res: 

select *
from student 
where subscription_year = 2021;

-- 3. Visualizza tutti i corsi offerti dal dipartimento di Fisica.
-- res: 

select name
from course 
where department like 'Fisica';


-- 4. Mostra i nomi dei corsi insieme ai relativi dipartimenti.
-- res: 

select name, department
from course;

-- 5. Conta il numero totale di studenti iscritti all'università.
-- res: 

select count(*) as totalNumber
from student;

-- Esercizi con GROUP BY e HAVING

-- 6. Conta quanti corsi sono offerti in ogni dipartimento.
-- res: 
 
select count(*) as coursesNumber, department
from course 
group by department;


-- 8. Elenca il numero di studenti iscritti per ogni anno di iscrizione.
-- res: 5 (3, 2, 2, 2, 1)

select count(*) as students, subscription_year 
from student 
group by subscription_year;




-- Esercizi con JOIN
-- 11. Mostra il nome di ogni studente insieme al nome del corso a cui sono iscritti.
-- res: 30

select s.name, c.name
from student s 
inner join course_subscription cs on s.id = cs.student_id
inner join course c on cs.course_id = c.id;


-- 12. Elenca tutti i corsi insieme ai nomi dei professori che li insegnano.
-- res: 10

select c.name as courseName, p.name as professorName
from course c 
inner join professor p on c.professor_id = p.id;

-- 13. Trova gli studenti e i corsi relativi al dipartimento di Chimica.
-- res: 3

select s.name as studentName, c.name as courseName
from student s
inner join course_subscription cs on s.id = cs.student_id
inner join course c on cs.course_id = c.id
where department like 'Chimica';

-- 14. Visualizza i nomi degli studenti e i corsi che hanno frequentato nel 2022.
-- res: 6

select s.name as studentName, c.name as course_2022
from student s
inner join course_subscription cs on s.id = cs.student_id
inner join course c on cs.course_id = c.id
where s.subscription_year = 2022;

-- 15. Elencare i professori con i loro corsi e i relativi dipartimenti.
-- res: 10

select p.name, c.name, c.department
from professor p 
inner join course c on p.id = c.professor_id;

-- 19. Visualizza i corsi con il maggior numero di studenti.
-- res: 1 (3)

select count(*) as studentNumber, c.name
from student s 
inner join course_subscription cs on s.id = cs.student_id 
inner join course c on c.id = cs.course_id
group by c.name
order by studentNumber desc
limit 1;

