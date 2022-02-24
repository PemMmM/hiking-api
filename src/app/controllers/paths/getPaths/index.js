const handleAPIError = require("~root/utils/handleAPIError");
const fetchAllPaths = require("~root/actions/paths/fetchAllPaths");
const getAllPaths = async (req, res) => {
  try {
    const { paths } = await fetchAllPaths();

    res.status(201).send({ paths });
  } catch (err) {
    handleAPIError(res, err);
  }
};

module.exports = getAllPaths;
