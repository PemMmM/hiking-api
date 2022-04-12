const { submitQuery, camelKeys, getFirst } = require("~root/lib/database");

const selectUserDetails = userId => submitQuery`
    SELECT 
        first_name,
        last_name,
        email,
        created_at,
        user_type,
        date_of_birth
    FROM users
    LEFT JOIN user_types ON users.user_type_id = user_types.user_type_id
    WHERE user_id = ${userId}
`;

module.exports = getFirst(camelKeys(selectUserDetails));
