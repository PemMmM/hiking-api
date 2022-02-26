const selectPathByCity = require("./queries/selectPathByCity");

const fetchPathByCity = async ({ city }) => {
  const path = await selectPathByCity({
    city
  });

  return { path };
};

module.exports = fetchPathByCity;
