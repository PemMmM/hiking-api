const { submitQuery, camelKeys } = require("~root/lib/database");

const selectPathByPathId = ({ pathId }) => submitQuery`
SELECT 
*
FROM
paths
WHERE path_id = ${pathId}
`;

module.exports = camelKeys(selectPathByPathId);
