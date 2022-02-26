const selectReviewById = require("./queries/selectReviewByReviewId");

const fetchReviewById = async ({ reviewId }) => {
  const review = await selectReviewById({ reviewId });

  return { review };
};

module.exports = fetchReviewById;
