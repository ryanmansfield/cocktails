import "jquery-bar-rating";

const initStarRating = () => {
  $ ('#rating_rating').barrating({
    theme: 'css-stars',
    onSelect: (value, text, event) => {
      const form = $("form.ratings_form");
      form.submit();
    }
  });
};

export { initStarRating };
