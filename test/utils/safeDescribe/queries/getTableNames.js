const { submitQuery } = require("~root/lib/database");

const getTableNames = () => submitQuery`
    SELECT table_name 
    FROM information_schema.TABLES 
    WHERE table_schema = "hiking_api_db";
`;

module.exports = getTableNames;
