# Создать базу данных “Друзья человека”

CREATE DATABASE human_friends;

USE human_friends;


# Создать таблицы с иерархией из диаграммы в БД

CREATE TABLE hamsters (
	hamster_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	hamster_type VARCHAR(20) DEFAULT 'home_pet',
    hamster_name VARCHAR(45),
    hamster_birth_date DATETIME(6),
    hamster_command VARCHAR(255)    
);

CREATE TABLE cats (
	cat_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	cat_type VARCHAR(20) DEFAULT 'home_pet',
    cat_name VARCHAR(45),
    cat_birth_date DATETIME(6),
    cat_command VARCHAR(255)    
);

CREATE TABLE dogs (
	dog_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	dog_type VARCHAR(20) DEFAULT 'home_pet',
    dog_name VARCHAR(45),
    dog_birth_date DATETIME(6),
    dog_command VARCHAR(255)    
);

CREATE TABLE donkeys (
	donkey_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	donkey_type VARCHAR(20) DEFAULT 'pack_pet',
    donkey_name VARCHAR(45),
    donkey_birth_date DATETIME(6),
    donkey_command VARCHAR(255)    
);

CREATE TABLE horses (
	horse_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	horse_type VARCHAR(20) DEFAULT 'pack_pet',
    horse_name VARCHAR(45),
    horse_birth_date DATETIME(6),
    horse_command VARCHAR(255)    
);

CREATE TABLE camels (
	camel_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	camel_type VARCHAR(20) DEFAULT 'pack_pet',
    camel_name VARCHAR(45),
    camel_birth_date DATETIME(6),
    camel_command VARCHAR(255)    
);


# Заполнить низкоуровневые таблицы именами животных, командами которые они выполняют и датами рождения

INSERT INTO hamsters (hamster_name, hamster_birth_date, hamster_command) VALUES
    ('Хома', '2022-01-01', 'Спать'),
    ('Кулек', '2017-06-06', 'Спать'),
	('Задира', '2023-01-06', 'Спать'),
    ('Пушок', '2021-03-17', 'Спать');
   
INSERT INTO cats (cat_name, cat_birth_date, cat_command) VALUES
    ('Барсик', '2022-01-01', 'Кыс-кыс Брысь'),
    ('Мурзик', '2017-06-06', 'Кыс-кыс'),
	('Матильда', '2023-01-06', 'Кыс-кыс Брысь'),
    ('Софа', '2021-03-17', 'Кыс-кыс');  

INSERT INTO dogs (dog_name, dog_birth_date, dog_command) VALUES
    ('Тузик', '2022-01-01', 'Сидеть Фас Стоять Лежать'),
    ('Барбос', '2017-06-06', 'Сидеть Фас Стоять'),
	('Шарик', '2023-01-06', 'Сидеть'),
    ('Барса', '2021-03-17', 'Сидеть Фас');  
    
INSERT INTO donkeys (donkey_name, donkey_birth_date, donkey_command) VALUES
    ('Тразек', '2022-01-01', 'Иди Стой'),
    ('Марзис', '2017-06-06', 'Иди Стой'),
	('Шарка', '2023-01-06', ''),
    ('Маршар', '2021-03-17', 'Иди Стой');  
    
INSERT INTO horses (horse_name, horse_birth_date, horse_command) VALUES
    ('Рысак', '2022-01-01', 'Иди Стой Галоп'),
    ('Марка', '2017-06-06', 'Иди Стой'),
	('Седой', '2023-01-06', 'Иди Стой Галоп'),
    ('Брав', '2021-03-17', 'Иди Стой');  
    
INSERT INTO camels (camel_name, camel_birth_date, camel_command) VALUES
    ('Махуд', '2022-01-01', ''),
    ('Шаракса', '2017-06-06', ''),
	('Криса', '2023-01-06', ''),
    ('Барум', '2021-03-17', '');  

   
# Удалив из таблицы верблюдов, т.к. верблюдов решили перевезти в другой питомник на зимовку
   
DELETE FROM camels WHERE camel_id > 0;


# Объединить таблицы лошади, и ослы в одну таблицу

CREATE TABLE pack_animals (pack_animal_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY)
SELECT  'horse' AS pack_animal_type,
		horse_name AS pack_animal_name, 
        horse_birth_date AS pack_animal_birth_date, 
        horse_command AS pack_animal_commands
FROM horses UNION 
SELECT  'donkey' AS pack_animal_type,
		donkey_name AS pack_animal_name,
        donkey_birth_date AS pack_animal_birth_date, 
        donkey_command AS pack_animal_commands
from donkeys;


# Создать новую таблицу “молодые животные” в которую попадут все животные старше 1 года, но младше 3 лет 
# и в отдельном столбце с точностью до месяца подсчитать возраст животных в новой таблице

CREATE TABLE young_pets (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY)
SELECT  'hamster' AS pet_type,
		hamster_name AS pet_name,  
        hamster_birth_date AS pet_birth_date,
        ROUND((year(current_date()) - year(hamster_birth_date)) + (month(current_date() - month(hamster_birth_date)))/10, 2) AS pet_age,
        hamster_command AS pet_commands
FROM hamsters 
WHERE ROUND((year(current_date()) - year(hamster_birth_date)) + (month(current_date() - month(hamster_birth_date)))/10, 2) > 1 
	AND ROUND((year(current_date()) - year(hamster_birth_date)) + (month(current_date() - month(hamster_birth_date)))/10, 2) < 3
UNION
SELECT  'cat' AS pet_type,
		cat_name AS pet_name,  
        cat_birth_date AS pet_birth_date,
        ROUND((year(current_date()) - year(cat_birth_date)) + (month(current_date() - month(cat_birth_date)))/10, 2) AS pet_age,
        cat_command AS pet_commands
FROM cats 
WHERE ROUND((year(current_date()) - year(cat_birth_date)) + (month(current_date() - month(cat_birth_date)))/10, 2) > 1 
	AND ROUND((year(current_date()) - year(cat_birth_date)) + (month(current_date() - month(cat_birth_date)))/10, 2) < 3
UNION
SELECT  'dog' AS pet_type,
		dog_name AS pet_name,  
        dog_birth_date AS pet_birth_date,
        ROUND((year(current_date()) - year(dog_birth_date)) + (month(current_date() - month(dog_birth_date)))/10, 2) AS pet_age,
        dog_command AS pet_commands
FROM dogs
WHERE ROUND((year(current_date()) - year(dog_birth_date)) + (month(current_date() - month(dog_birth_date)))/10, 2) > 1 
	AND ROUND((year(current_date()) - year(dog_birth_date)) + (month(current_date() - month(dog_birth_date)))/10, 2) < 3
UNION 
SELECT  'donkey' AS pet_type,
		donkey_name AS pet_name,  
        donkey_birth_date AS pet_birth_date,
        ROUND((year(current_date()) - year(donkey_birth_date)) + (month(current_date() - month(donkey_birth_date)))/10, 2) AS pet_age,
        donkey_command AS pet_commands
FROM donkeys
WHERE ROUND((year(current_date()) - year(donkey_birth_date)) + (month(current_date() - month(donkey_birth_date)))/10, 2) > 1 
	AND ROUND((year(current_date()) - year(donkey_birth_date)) + (month(current_date() - month(donkey_birth_date)))/10, 2) < 3
UNION 
SELECT  'horse' AS pet_type,
		horse_name AS pet_name,  
        horse_birth_date AS pet_birth_date,
        ROUND((year(current_date()) - year(horse_birth_date)) + (month(current_date() - month(horse_birth_date)))/10, 2) AS pet_age,
        horse_command AS pet_commands
FROM horses
WHERE ROUND((year(current_date()) - year(horse_birth_date)) + (month(current_date() - month(horse_birth_date)))/10, 2) > 1 
	AND ROUND((year(current_date()) - year(horse_birth_date)) + (month(current_date() - month(horse_birth_date)))/10, 2) < 3
UNION 
SELECT  'camel' AS pet_type,
		camel_name AS pet_name,  
        camel_birth_date AS pet_birth_date,
        ROUND((year(current_date()) - year(camel_birth_date)) + (month(current_date() - month(camel_birth_date)))/10, 2) AS pet_age,
        camel_command AS pet_commands
FROM camels
WHERE ROUND((year(current_date()) - year(camel_birth_date)) + (month(current_date() - month(camel_birth_date)))/10, 2) > 1 
	AND ROUND((year(current_date()) - year(camel_birth_date)) + (month(current_date() - month(camel_birth_date)))/10, 2) < 3;
	

# Объединить все таблицы в одну, при этом сохраняя поля, указывающие на прошлую принадлежность к старым таблицам 

CREATE TABLE all_pets (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY)
SELECT  'hamster' AS pet_type,
		hamster_name AS pet_name,  
        hamster_birth_date AS pet_birth_date,
        hamster_command AS pet_commands
FROM hamsters UNION
SELECT  'cat' AS pet_type,
		cat_name AS pet_name,  
        cat_birth_date AS pet_birth_date,
        cat_command AS pet_commands
FROM cats UNION
SELECT  'dog' AS pet_type,
		dog_name AS pet_name,  
        dog_birth_date AS pet_birth_date,
        dog_command AS pet_commands
FROM dogs UNION 
SELECT  'donkey' AS pet_type,
		donkey_name AS pet_name,  
        donkey_birth_date AS pet_birth_date,
        donkey_command AS pet_commands
FROM donkeys UNION 
SELECT  'horse' AS pet_type,
		horse_name AS pet_name,  
        horse_birth_date AS pet_birth_date,
        horse_command AS pet_commands
FROM horses UNION 
SELECT  'camel' AS pet_type,
		camel_name AS pet_name,  
        camel_birth_date AS pet_birth_date,
        camel_command AS pet_commands
FROM camels;