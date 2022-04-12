const fetchUserDetails = require("~root/actions/users/fetchUserDetails");
const handleAPIError = require("~root/utils/handleAPIError");

const getUserDetails = async (req, res) => {
  try {
    const { userId } = req.user;

    const { user } = await fetchUserDetails(userId);
    res.status(201).send({
      user
    });
  } catch (err) {
    handleAPIError(res, err);
  }
};

module.exports = getUserDetails;
