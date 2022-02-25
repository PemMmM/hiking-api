const { submitQuery, camelKeys } = require("~root/lib/database");

const selectAllPaths = () => submitQuery`
SELECT 
*
FROM
paths
`;

module.exports = camelKeys(selectAllPaths);
