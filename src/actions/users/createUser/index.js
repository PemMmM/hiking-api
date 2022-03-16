const insertUser = require("./queries/insertUser");

const createUser = async ({
  firstName,
  lastName,
  phoneNumber,
  email,
  password,
  dateOfBirth,
  image
}) => {
  const user = await insertUser({
    firstName,
    lastName,
    phoneNumber,
    email,
    password,
    dateOfBirth,
    image
  });

  return { user };
};

module.exports = createUser;
