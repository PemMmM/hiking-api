const selectUsers = require("./queries/selectUsers");

const fetchUserDetails = async userId => {
  const user = await selectUsers(userId);

  return { user };
};

module.exports = fetchUserDetails;
