// eslint-disable-next-line import/no-unresolved
const { submitQuery, camelKeys, getFirst } = require("~root/lib/database");

const selectPathByPathId = ({ pathId }) => submitQuery`
# debug
SELECT 
*
FROM
paths
WHERE path_id = ${pathId}
`;

module.exports = getFirst(camelKeys(selectPathByPathId));
