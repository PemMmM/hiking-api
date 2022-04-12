const insertReview = require("./queries/insertReview");

const createReview = async ({ pathId, userId, reviewStars }) => {
  const review = await insertReview({
    pathId,
    userId,
    reviewStars
  });

  return { review };
};

module.exports = createReview;
