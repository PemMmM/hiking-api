const selectAllPaths = require("../fetchAllPaths/queries/selectAllPaths");

const fetchAllPaths = async () => {
  const paths = await selectAllPaths();

  return { paths };
};

module.exports = fetchAllPaths;
