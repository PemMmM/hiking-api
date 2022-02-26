const { submitQuery, camelKeys } = require("~root/lib/database");

const selectReviewById = ({ reviewId }) => submitQuery`
    SELECT 
       *
    FROM reviews
    WHERE review_id= ${reviewId}
    
`;

module.exports = camelKeys(selectReviewById);
