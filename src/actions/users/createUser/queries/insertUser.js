const { submitQuery, getInsertId } = require("~root/lib/database");

const insertUser = ({
  firstName,
  lastName,
  phoneNumber,
  email,
  password,
  dateOfBirth
}) => submitQuery`
  INSERT INTO users
  (
    first_name,
    last_name,
    phone_number,
    email,
    password,
    date_of_birth,
    user_type_id
  )
  VALUES
  (
    ${firstName},
    ${lastName},
    ${phoneNumber},
    ${email},
    sha2(concat(${password},${process.env.PASSWORD_SALT}), 224),
    ${dateOfBirth},
    2
  )
`;

module.exports = getInsertId(insertUser);
