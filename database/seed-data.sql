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
VALUES ("Pembe", "Mistikoglu", 905331234567, "pembe@pembe.com", "pembe", "1992-02-03 12:00:00",1,"image/url/pembe");
INSERT INTO users (first_name, last_name, phone_number, email, password, date_of_birth, user_type_id, image)
VALUES ("Ipek", "Soltanov", 905331234589, "ipek@ipek.com", "ipek", "1988-12-04 08:00:00",1,"image/url/ipek");
INSERT INTO users (first_name, last_name, phone_number, email, password, date_of_birth, user_type_id, image)
VALUES ("Feri", "Canselen", 905331234590, "feri@feri.com", "feri", "1999-08-24 12:00:02",1,"image/url/feri");

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
VALUES ("agirdag-kartalsuyu-agirdag", "agirdag path", "girne", "kktc", 3, "11km", 1, "image/url/agirdag_path");
INSERT INTO paths (path_title, path_description, city, country, path_difficulty_id, av_length, path_category_id, image)
VALUES ("kumyali-lagun-kumyali", "kumyali path", "iskele", "kktc", 1, "7km", 2, "image/url/kumyali_path");
INSERT INTO paths (path_title, path_description, city, country, path_difficulty_id, av_length, path_category_id, image)
VALUES ("korucam-sahil-korucam", "korucam path", "guzelyurt", "kktc", 2, "8km", 1, "image/url/korucam_path");

INSERT INTO reviews (user_id, path_id,review_stars)
VALUES (1, 1, 5);
INSERT INTO reviews (user_id, path_id,review_stars)
VALUES (2, 2, 5);
INSERT INTO reviews (user_id, path_id,review_stars)
VALUES (3, 3, 5);