const fetchReviewById = require("~root/actions/reviews/fetchReviewById");
const handleAPIError = require("~root/utils/handleAPIError");

const getReviewByReviewId = async (req, res) => {
  const { reviewId } = req.params;
  try {
    const { review } = await fetchReviewById({
      reviewId
    });

    res.status(201).send({ review });
  } catch (err) {
    handleAPIError(res, err);
  }
};

module.exports = getReviewByReviewId;
