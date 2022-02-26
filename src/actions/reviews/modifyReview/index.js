const updateReview = require("./queries/updateReview");

const modifyReview = async ({
  reviewStars
}) => {
  const review = await updateReview({
    reviewStars
  });

  return { review };
};

module.exports = modifyReview;
