

DROP TABLE IF EXISTS Menu;

DROP TABLE IF EXISTS Dish_info;

DROP TABLE IF EXISTS Restaurant_info;

DROP TABLE IF EXISTS Ingredient;


CREATE TABLE Restaurant_info
(
  Restaurant_ID INT NOT NULL,
  Restaurant_Name VARCHAR(255) NOT NULL,
  Address VARCHAR(255),
  Phone VARCHAR(20),
  Delivery_Available VARCHAR(6),
  Average_Price VARCHAR(5),
  Rating DECIMAL(2,1),
  Website VARCHAR(255),
  PRIMARY KEY (Restaurant_ID)
);

CREATE TABLE Ingredient
(
  Ingredient_ID INT NOT NULL,
  Ingredient_Name VARCHAR(255) NOT NULL,
  Calories INT,
  PRIMARY KEY (Ingredient_ID)
);

CREATE TABLE Dish_info
(
  Dish_ID INT NOT NULL,
  Main_Ingredient VARCHAR(255) NOT NULL,
  Secondary_Ingredient VARCHAR(255),
  Dish_Name VARCHAR(255) NOT NULL,
  Description VARCHAR(255),
  Vegetarian VARCHAR(6),
  PRIMARY KEY (Dish_ID)
--  FOREIGN KEY (Main_Ingredient) REFERENCES Ingredient(Ingredient_ID),
--  FOREIGN KEY (Secondary_Ingredient) REFERENCES Ingredient(Ingredient_ID)
);

CREATE TABLE Menu
(
  Restaurant_ID INT NOT NULL,
  Dish_ID INT NOT NULL,
  Price DECIMAL(6,2),
  PRIMARY KEY (Restaurant_ID, Dish_ID)
--  FOREIGN KEY (Restaurant_ID) REFERENCES Restaurant_info(Restaurant_ID),
--  FOREIGN KEY (Dish_ID) REFERENCES Dish_info(Dish_ID)
);

