const { submitQuery, getInsertId } = require("~root/lib/database");

const insertUser = ({
  firstName,
  lastName,
  phoneNumber,
  email,
  password,
  dateOfBirth,
  image
}) => submitQuery`
  INSERT INTO users
  (
    first_name,
    last_name,
    phone_number,
    email,
    password,
    date_of_birth,
    image,
    user_type_id
  )
  VALUES
  (
    ${firstName},
    ${lastName},
    ${phoneNumber},
    ${email},
    sha2(concat(${password},${process.env.password_salt}), 224),
    ${dateOfBirth},
    ${image},
  )
`;

module.exports = getInsertId(insertUser);
