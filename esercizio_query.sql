-- Esercizi solo con SELECT
-- 1. Seleziona tutti i professori dal dipartimento di Informatica.
-- res: 

select *
from professor 
where department = 'Informatica';

-- 2. Elenca tutti gli studenti iscritti nell'anno 2021.
-- res: 

select *
from student 
where subscription_year = 2021;

-- 3. Visualizza tutti i corsi offerti dal dipartimento di Fisica.
-- res: 

select name
from course 
where department = 'Fisica';


-- 4. Mostra i nomi dei corsi insieme ai relativi dipartimenti.
-- res: 

select name, department
from course;

-- 5. Conta il numero totale di studenti iscritti all'università.
-- res: 

select count(*) as totalNumber
from student;

-- Esercizi con GROUP BY e HAVING
-- res: 



-- 6. Conta quanti corsi sono offerti in ogni dipartimento.
-- res: 
 
select count(*) as coursesNumber, department
from course 
group by department;


-- 8. Elenca il numero di studenti iscritti per ogni anno di iscrizione.
-- res: 



-- 10. Trova i professori che insegnano più di un corso.
-- res: 



-- Esercizi con JOIN
-- res: 



-- 11. Mostra il nome di ogni studente insieme al nome del corso a cui sono iscritti.
-- res: 



-- 12. Elenca tutti i corsi insieme ai nomi dei professori che li insegnano.
-- res: 



-- 13. Trova gli studenti e i corsi relativi al dipartimento di Chimica.
-- res: 



-- 14. Visualizza i nomi degli studenti e i corsi che hanno frequentato nel 2022.
-- res: 



-- 15. Elencare i professori con i loro corsi e i relativi dipartimenti.
-- res: 



-- 16. Trova i corsi senza studenti iscritti.
-- res: 



-- 17. Mostra i corsi con più di 5 iscritti.
-- res: 




-- 19. Visualizza i corsi con il maggior numero di studenti.
-- res: 



-- 20. Trova gli studenti che sono iscritti a più di 3 corsi.
-- res: 