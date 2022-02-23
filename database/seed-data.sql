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
VALUES (1, "Pembe", "Mistikoglu", +905331234567, "pembe@pembe.com", "pembe, 02.02.1992",1,",mage/url/pembe");
INSERT INTO users (first_name, last_name, phone_number, email, password, date_of_birth, user_type_id, image)
VALUES (1, "Ipek", "Soltanov", +905331234589, "ipek@ipek.com", "ipek, 06.05.1988",1,",mage/url/ipek");
INSERT INTO users (first_name, last_name, phone_number, email, password, date_of_birth, user_type_id, image)
VALUES (1, "Feri", "Canselen", +905331234590, "feri@feri.com", "feri, 02.08.1999",1,",mage/url/feri");

INSERT INTO path_difficulties (path_difficulty)
VALUES (1);
INSERT INTO path_difficulties (path_difficulty)
VALUES (2);
INSERT INTO path_difficulties (path_difficulty)
VALUES (3);