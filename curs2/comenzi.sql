CREATE TABLE `magazin`.`produse` (`idprodus` INT UNSIGNED NOT NULL AUTO_INCREMENT , `numeprodus` VARCHAR(100) NOT NULL , `cantitate` INT NOT NULL DEFAULT '0' , `idfirma` INT NOT NULL , `firma` VARCHAR(50) NOT NULL , `adresafirma` VARCHAR(100) NULL , `modelprodus` VARCHAR(50) NOT NULL , `stocprodus` INT NOT NULL DEFAULT '0' , `pret` DECIMAL(10,2) NOT NULL , `categoriep` VARCHAR(100) NOT NULL , `descrierep` TEXT NOT NULL , `dataadaugare` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , PRIMARY KEY (`idprodus`)) ENGINE = InnoDB CHARSET=utf8 COLLATE utf8_general_ci;


SELECT * FROM student CROSS JOIN note;


-- SELECT id_student, s.nume, s.prenume, COUNT(id_student) AS nr FROM `note` as n 
-- RIGHT JOIN student AS s ON n.id_student=s.id
-- GROUP BY id_student HAVING nr>=2;

SELECT id_student, s.nume, s.prenume, COUNT(id_student) AS nr FROM `student` as s
LEFT JOIN note AS n ON s.id=n.id_student
GROUP BY id_student HAVING nr>=2;