const { submitQuery, camelKeys } = require("~root/lib/database");

const selectPathByCity = ({ city }) => submitQuery`
    SELECT 
       *
    FROM paths
    WHERE city= ${city}
    
`;

module.exports = camelKeys(selectPathByCity);
