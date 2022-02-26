const fetchPathByPathId = require("~root/actions/paths/fetchPathByPathId");
const handleAPIError = require("~root/utils/handleAPIError");

const getPathByPathId = async (req, res) => {
  const { pathId } = req.params;
  try {
    const { path } = await fetchPathByPathId({ pathId });
    res.status(201).send({ path });
  } catch (err) {
    handleAPIError(res, err);
  }
};
module.exports = getPathByPathId;
