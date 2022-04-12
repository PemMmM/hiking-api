const { submitQuery } = require("~root/lib/database");

const insertReview = ({ pathId, userId, reviewStars }) => submitQuery`
    INSERT INTO reviews(
      path_id,
      user_id,
      review_stars
    )
    VALUES(${pathId},${userId},${reviewStars})
`;

module.exports = insertReview;