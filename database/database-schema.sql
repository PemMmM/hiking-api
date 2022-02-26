/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;
--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

USE `hiking_api_db`;

-- DONT MODIFY THIS MIGRATION
-- it is used by Xest local development pipeline
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `run_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET = utf8mb4 COLLATE utf8mb4_unicode_ci;

INSERT INTO `migrations` (
  name,
  run_on
) VALUES (
  "/20211107064324-database-schema",
  "20211107064324"
);

-- YOU CAN MODIFY BELOW THIS LINE
DROP TABLE IF EXISTS user_types;
CREATE TABLE user_types(
  user_type_id int AUTO_INCREMENT PRIMARY KEY,
  user_type VARCHAR(50) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE utf8mb4_unicode_ci;

DROP TABLE IF EXISTS users;
CREATE TABLE users(
  user_id int AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  phone_number VARCHAR(70),
  email VARCHAR(70) NOT NULL UNIQUE,
  password VARCHAR(500) NOT NULL,
  date_of_birth DATETIME NOT NULL,
  user_type_id int NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  image VARCHAR(300),
  FOREIGN KEY (user_type_id) REFERENCES user_types(user_type_id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE utf8mb4_unicode_ci;

DROP TABLE IF EXISTS path_difficulties;
CREATE TABLE path_difficulties(
  path_difficulty_id int AUTO_INCREMENT PRIMARY KEY,
  path_difficulty VARCHAR(20)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE path_categories(
  path_categories_id int AUTO_INCREMENT PRIMARY KEY,
  path_category VARCHAR(20)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE utf8mb4_unicode_ci;

DROP TABLE IF EXISTS paths;
CREATE TABLE paths(
  path_id int AUTO_INCREMENT PRIMARY KEY,
  path_title VARCHAR(40),
  path_description VARCHAR(150),
  city VARCHAR(30),
  country VARCHAR(30),
  path_difficulty_id int NOT NULL,
  av_length VARCHAR(30),
  path_category_id int NOT NULL,
  image VARCHAR(300),
FOREIGN KEY (path_category_id) REFERENCES path_categories(path_categories_id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE utf8mb4_unicode_ci;

DROP TABLE IF EXISTS reviews;
CREATE TABLE reviews(
  review_id int AUTO_INCREMENT PRIMARY KEY,
  user_id int NOT NULL,
  path_id int NOT NULL,
  review_stars int NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (path_id) REFERENCES paths(path_id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE utf8mb4_unicode_ci; 

