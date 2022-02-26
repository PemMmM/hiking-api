const fetchPathByCity = require("~root/actions/paths/fetchPathByCity");
const handleAPIError = require("~root/utils/handleAPIError");

const getPathByCity = async (req, res) => {
  const { city } = req.params;

  try {
    const { path } = await fetchPathByCity({
      city
    });

    res.status(201).send({
      path
    });
  } catch (err) {
    handleAPIError(res, err);
  }
};

module.exports = getPathByCity;
