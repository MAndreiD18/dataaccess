CREATE DATABASE demo;
USE demo;

CREATE TABLE `demo`.`student` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `nume` VARCHAR(100) NOT NULL , 
    `prenume` VARCHAR(100) NOT NULL , 
    `telefon` CHAR(10) NOT NULL , 
    `mail` VARCHAR(200) NOT NULL , 
    `data_adaugare` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    PRIMARY KEY (`id`)
    ) 
    ENGINE = InnoDB 
    CHARSET=utf8 COLLATE utf8_general_ci;

ALTER TABLE `student` CHANGE `mail` `mail` VARCHAR(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;


ALTER TABLE `demo`.`student` ADD UNIQUE `email_unic` (`mail`);

INSERT INTO `student` (`id`, `nume`, `prenume`, `telefon`, `mail`, `data_adaugare`) VALUES (NULL, 'Popescu', 'Dan', '0731493829', 'popescu@dan.ro', current_timestamp());

UPDATE `student` SET `mail` = 'popescu@dan..com.ro' WHERE `student`.`id` = 1;