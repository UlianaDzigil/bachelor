CREATE USER postgres;
CREATE DATABASE favla;
GRANT ALL PRIVILAGES ON DATABASE
favla TO postgres;


CREATE TABLE IF NOT EXISTS dishes_types (
   id SERIAL PRIMARY KEY,
   type VARCHAR ( 50 ) 
);

CREATE TABLE IF NOT EXISTS dishes (
   id SERIAL PRIMARY KEY,
   name VARCHAR ( 50 ) NOT NULL,
   cost_uah INT NOT NULL,
   type_id INT,
   description VARCHAR ( 255 ),
   image VARCHAR ( 255 ),
   CONSTRAINT fk_type
      FOREIGN KEY(type_id) 
	  REFERENCES dishes_types(id)
);

CREATE TABLE IF NOT EXISTS tables (
   id SERIAL PRIMARY KEY,
   table_number INT NOT NULL,
   max_guests INT NOT NULL
);

CREATE TABLE IF NOT EXISTS reserve_time (
   id SERIAL PRIMARY KEY,
   reserve_time VARCHAR ( 50 ) NOT NULL
);


CREATE TABLE IF NOT EXISTS reservations (
   id SERIAL PRIMARY KEY,
   person_name VARCHAR ( 50 ),
   reservation_date date,
   email VARCHAR ( 50 ),
   telegram VARCHAR ( 50 ),
   table_id INT,
   time_id INT,
   CONSTRAINT fk_reservations_table
      FOREIGN KEY(table_id) 
	  REFERENCES tables(id),
   CONSTRAINT fk_reservations_time
      FOREIGN KEY(time_id) 
	  REFERENCES reserve_time(id)	  
);



INSERT INTO dishes_types(id, type)
VALUES (1, "Закуски");

INSERT INTO dishes_types(id, type)
VALUES (2, "Основні страви");

INSERT INTO dishes_types(id, type)
VALUES (3, "Десерти");

INSERT INTO dishes_types(id, type)
VALUES (4, "Напої");




INSERT INTO dishes(id, type_id, name, cost_uah, description, image)
VALUES (1, 1, "Брускета з інжиром та червоною ікрою", 190, 
   "Хрустка брускета смажена на маслі авокадо, подається з вершковим сиром, свіжим інжиром, червоною ікрою та молодою петрушкою",
   "Appetizer1.jpg");

INSERT INTO dishes(id, type_id, name, cost_uah, description, image)
VALUES (2, 1, "Гребінці та білі гриби з сирним соусом", 180, 
   "Смажені на вершковому маслі гребінці та білі гриби з соусом на основі трьох сирів, овочевого бульйону та вершкового масла",
   "Appetizer2.jpg");

INSERT INTO dishes(id, type_id, name, cost_uah, description, image)
VALUES (3, 1, "Овочевий рулет з телятиною на подушці з ачми", 210, 
   "Котлета з телятини та сезонних трав, загорнута в смажені овочі з  ачмою (листковий пиріг з адигейським сиром)",
   "Appetizer3.jpg");



INSERT INTO dishes(id, type_id, name, cost_uah, description, image)
VALUES (4, 2, "Тунець та пюре з пастернака", 220, 
   "Тунець смажений на відкритому огні та пюре з пастернака й кунжутного соусу з молодим горошком",
   "Main1.jpg");

INSERT INTO dishes(id, type_id, name, cost_uah, description, image)
VALUES (5, 2, "Томлені реберця", 330, 
   "Томлені реберця у гранатовому маринаді з молодою картоплею та сирним кремом",
   "Main2.JPG");

INSERT INTO dishes(id, type_id, name, cost_uah, description, image)
VALUES (6, 2, "Курячий рулет", 210, 
   "Запечений курячий рулет з травами та білими грибами на шпинатній подушці та пюре з картоплі та баклажанів",
   "Main3.jpg");

INSERT INTO dishes(id, type_id, name, cost_uah, description, image)
VALUES (7, 2, "Веганське м’ясо", 310, 
   "Веганське м’ясо з вишевим конфі та солоною піною",
   "Main4.jpg");

INSERT INTO dishes(id, type_id, name, cost_uah, description, image)
VALUES (8, 2, "Паста з восьминогом", 350, 
   "Паста з чорнилами каракатиці та смаженим на вершковому маслі восьминогом з соусом на основі томатів, перцю чилі та пармезану",
   "Main5.jpg");

INSERT INTO dishes(id, type_id, name, cost_uah, description, image)
VALUES (9, 2, "Тріска з травами", 270, 
   "Тріска запечена з провансальськими травами, соусом з апельсинів та лимонів та хрусткими грінками",
   "Main6.JPG");



INSERT INTO dishes(id, type_id, name, cost_uah, description, image)
VALUES (10, 3, "Полуничне суфле з профітролями", 190, 
   "Полуничне суфле на основі вершків та профітролі з заварним кремом з додаванням ванілі на подушці з листкового тіста та полуничним конфі",
   "Dessert1.jpg");

INSERT INTO dishes(id, type_id, name, cost_uah, description, image)
VALUES (11, 3, "Веганська вафля з карамелізованим апельсином", 140, 
   "Веганська вафля з кремом на основі кокосових вершків та карамелізованими апельсинами томленими у вишневому соці",
   "Dessert2.jpg");

INSERT INTO dishes(id, type_id, name, cost_uah, description, image)
VALUES (12, 3, "Веганське морозиво", 110, 
   "Морозиво на основі ванільного молока з півсферами з чорного шоколаду, полуничним конфі та соусом на основі карамелі та бананового молока",
   "Dessert3.jpg");

INSERT INTO dishes(id, type_id, name, cost_uah, description, image)
VALUES (13, 3, "Шоколадно-горіхові тістечка", 150, 
   "Тістечка з додаванням фундука та лісового горіха з трьома соусами на основі чорного шоколаду, білого шоколаду та карамелі",
   "Dessert4.jpg");

INSERT INTO dishes(id, type_id, name, cost_uah, description, image)
VALUES (14, 3, "Мурашник з апельсиновим соусом", 180, 
   "Мурашник з арахісовими пелюстками та вершковим ванільним морозивом, соусом на основі апельсинів та карамелі та маленькими бізе",
   "Dessert5.jpg");

INSERT INTO dishes(id, type_id, name, cost_uah, description, image)
VALUES (15, 3, "Ягідне желе", 110, 
   "Веганське желе з вишнею та малиною з хрусткою ягідною крихтою",
   "Dessert6.JPG");



INSERT INTO dishes(id, type_id, name, cost_uah, description, image)
VALUES (16, 4, "Медовий ром", 210, 
   "Коктейль на основі рому з додаванням лікеру, карамелі та яблуневого соку",
   "Coctail1.jpg");

INSERT INTO dishes(id, type_id, name, cost_uah, description, image)
VALUES (17, 4, "Квітковий тонік", 120, 
   "Безалкогольний коктейль на основі тоніка та рожевої води",
   "Coctail2.png");

INSERT INTO dishes(id, type_id, name, cost_uah, description, image)
VALUES (18, 4, "Грушевий бриз", 210, 
   "Коктейль на основі просекко, грушевого сиропу, тоніку та лимону",
   "Coctail3.png");





