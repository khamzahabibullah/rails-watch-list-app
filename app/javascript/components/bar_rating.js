import $ from "jquery";
import "jquery-bar-rating";
const barRating = () => {
  $(function () {
    $("#review_rating").barrating({
      theme: "css-stars",
    });
  });
};
export { barRating };
