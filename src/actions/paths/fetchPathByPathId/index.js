const selectPathByPathId = require("./queries/selectPathByPathId");

const fetchPathByPathId = async ({ pathId }) => {
  const path = await selectPathByPathId({ pathId });
  return { path };
};
module.exports = fetchPathByPathId;
