const { submitQuery } = require("~root/lib/database");

const updateReview = ({
  reviewStars
}) => submitQuery`
    UPDATE reviews
    SET 
      review_stars = ${reviewStars},
    WHERE 
      review_id = ${reviewId}
      AND path_id = ${pathId}
      AND user_id = ${userId};
`;

module.exports = updateReview;


