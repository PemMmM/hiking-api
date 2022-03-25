/* Initialize DB with some seed data */
USE `hiking_api_db`;

-- DONT MODIFY THIS MIGRATION
-- it is used by Xest local development pipeline
INSERT INTO `migrations` (
  name,
  run_on
) VALUES (
  "/20211107064324-seed-data",
  "20211107064324"
);

-- YOU CAN MODIFY BELOW THIS LINE
INSERT INTO user_types (user_type_id, user_type)
VALUES (1, "admin");
INSERT INTO user_types (user_type_id, user_type)
VALUES (2, "user");

INSERT INTO users (first_name, last_name, phone_number, email, password, date_of_birth, user_type_id, image)
VALUES ("Pembe", "Mistikoglu", 905331234567, "pembe@pembe.com",SHA2(CONCAT("12345678","SECRET_SALT"), 224), "1992-02-03 12:00:00",1,"image/url/pembe");
INSERT INTO users (first_name, last_name, phone_number, email, password, date_of_birth, user_type_id, image)
VALUES ("Ipek", "Soltanov", 905331234589, "ipek@ipek.com",SHA2(CONCAT("12345678","SECRET_SALT"), 224), "1988-12-04 08:00:00",1,"image/url/ipek");
INSERT INTO users (first_name, last_name, phone_number, email, password, date_of_birth, user_type_id, image)
VALUES ("Feri", "Canselen", 905331234590, "feri@feri.com",SHA2(CONCAT("12345678","SECRET_SALT"), 224), "1999-08-24 12:00:02",1,"image/url/feri");

INSERT INTO path_difficulties (path_difficulty)
VALUES (1);
INSERT INTO path_difficulties (path_difficulty)
VALUES (2);
INSERT INTO path_difficulties (path_difficulty)
VALUES (3);

INSERT INTO path_categories (path_category)
VALUES ("cycling");
INSERT INTO path_categories (path_category)
VALUES ("walking");

INSERT INTO paths (path_title, path_description, city, country, path_difficulty_id, av_length, path_category_id, image)
VALUES ("Soli Trail", "The trailhead is the entrance gate of Soli Ruins near Yedidalga(Potamusdu-Gambu) Village. ", "Lefka", "North Cyprus", 1, "8.5km", 1, "https://images.pexels.com/photos/1857628/pexels-photo-1857628.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260");
INSERT INTO paths (path_title, path_description, city, country, path_difficulty_id, av_length, path_category_id, image)
VALUES ("Kalkanli Anit Zeytinleri Trail", "The trailhead is located near 'Cardak Cafe', and the picnic area on the mainroad between Tepebasi(Diorios) and Kalkanli(Kapouti) villages.", "Morphou", "North Cyprus", 1, "6.5km", 2, "https://images.pexels.com/photos/1431592/pexels-photo-1431592.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260");
INSERT INTO paths (path_title, path_description, city, country, path_difficulty_id, av_length, path_category_id, image)
VALUES ("Karsiyaka Trail", "The trailhead is the entrance gate of the Karsiyaka Cental Elementary School in Karsiyaka(Vasilia) Village.", "Kyrenia", "North Cyprus", 3, "6.5km", 1, "https://images.pexels.com/photos/2423257/pexels-photo-2423257.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260");

INSERT INTO reviews (user_id, path_id,review_stars)
VALUES (1, 1, 5);
INSERT INTO reviews (user_id, path_id,review_stars)
VALUES (2, 2, 5);
INSERT INTO reviews (user_id, path_id,review_stars)
VALUES (3, 3, 5);

