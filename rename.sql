-- script to rename tables for better compatibility with an ORM

RENAME TABLE `sakila_actor` TO `actors`;
RENAME TABLE `sakila_address` TO `addresses`;
RENAME TABLE `sakila_category` TO `categories`;
RENAME TABLE `sakila_city` TO `cities`;
RENAME TABLE `sakila_country` TO `countries`;
RENAME TABLE `sakila_customer` TO `customers`;
RENAME TABLE `sakila_film` TO `films`;
RENAME TABLE `sakila_film_actor` TO `film_actor`;
RENAME TABLE `sakila_film_category` TO `film_category`;
RENAME TABLE `sakila_inventory` TO `inventories`;
RENAME TABLE `sakila_language` TO `languages`;
RENAME TABLE `sakila_payment` TO `payments`;
RENAME TABLE `sakila_rental` TO `rentals`;
RENAME TABLE `sakila_staff` TO `staff`;
RENAME TABLE `sakila_store` TO `store`;

ALTER TABLE `actors` RENAME COLUMN `actor_id` TO `id`;
ALTER TABLE `addresses` RENAME COLUMN `address_id` TO `id`;
ALTER TABLE `categories` RENAME COLUMN `category_id` TO `id`;
ALTER TABLE `cities` RENAME COLUMN `city_id` TO `id`;
ALTER TABLE `countries` RENAME COLUMN `country_id` TO `id`;
ALTER TABLE `customers` RENAME COLUMN `customer_id` TO `id`;
ALTER TABLE `films` RENAME COLUMN `film_id` TO `id`;
ALTER TABLE `inventories` RENAME COLUMN `inventory_id` TO `id`;
ALTER TABLE `languages` RENAME COLUMN `language_id` TO `id`;
ALTER TABLE `payments` RENAME COLUMN `payment_id` TO `id`;
ALTER TABLE `rentals` RENAME COLUMN `rental_id` TO `id`;
ALTER TABLE `staff` RENAME COLUMN `staff_id` TO `id`;
ALTER TABLE `stores` RENAME COLUMN `store_id` TO `id`;

ALTER TABLE `film_actor` DROP PRIMARY KEY;
ALTER TABLE `film_actor` ADD COLUMN `id` INT(11) NOT NULL AUTO_INCREMENT FIRST;
ALTER TABLE `film_actor` ADD PRIMARY KEY(`id`);

ALTER TABLE `film_category` DROP PRIMARY KEY;
ALTER TABLE `film_category` ADD COLUMN `id` INT(11) NOT NULL AUTO_INCREMENT FIRST;

ALTER TABLE `film_category` ADD PRIMARY KEY(`id`);
