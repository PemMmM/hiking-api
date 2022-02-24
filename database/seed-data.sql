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
VALUES (1, "Pembe", "Mistikoglu", +905331234567, "pembe@pembe.com", "pembe, 02.02.1992",1,"image/url/pembe");
INSERT INTO users (first_name, last_name, phone_number, email, password, date_of_birth, user_type_id, image)
VALUES (1, "Ipek", "Soltanov", +905331234589, "ipek@ipek.com", "ipek, 06.05.1988",1,"image/url/ipek");
INSERT INTO users (first_name, last_name, phone_number, email, password, date_of_birth, user_type_id, image)
VALUES (1, "Feri", "Canselen", +905331234590, "feri@feri.com", "feri, 02.08.1999",1,"image/url/feri");

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

INSERT INTO paths (path_title, path_desc, city, country, path_difficulty_id, av_length, path_category_id, image)
VALUES ("agirdag-kartalsuyu-agirdag", "agirdag path", "girne", "kktc", 3, "11km", 1, "image/url/agirdag_path");
INSERT INTO paths (path_title, path_desc, city, country, path_difficulty_id, av_length, path_category_id, image)
VALUES ("kumyali-lagun-kumyali", "kumyali path", "iskele", "kktc", 1, "7km", 2, "image/url/kumyali_path");
INSERT INTO paths (path_title, path_desc, city, country, path_difficulty_id, av_length, path_category_id, image)
VALUES ("korucam-sahil-korucam", "korucam path", "guzelyurt", "kktc", 2, "8km", 1, "image/url/korucam_path");