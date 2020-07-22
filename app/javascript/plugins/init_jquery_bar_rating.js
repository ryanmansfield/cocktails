import "jquery-bar-rating";
// import "jquery-bar-rating/dist/themes/css-stars"

const initStarRating = () => {
  $ ('#rating_rating').barrating({
    theme: 'css-stars',
    onSelect: (value, text, event) => {
      const form = $("form.ratings_form"); // We are selecting the form on the page with its class
      form.submit(); // We submit the form with javascript
    }
  });
};

export { initStarRating };
