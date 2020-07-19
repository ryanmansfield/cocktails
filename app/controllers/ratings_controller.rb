class RatingsController < ApplicationController
  before_action :set_cocktail
  # before_action :set_dose, only: [:destroy, :show]

  def new
    @rating = Rating.new
  end

  def create
    @rating = Rating.new(rating_params)
    @rating.cocktail = @cocktail
    if @rating.save
      redirect_to @cocktail, notice: "thanks for your rating"
    else
      redirect_to cocktail_path(@cocktail), notice: "Rating didnt work"
    end
  end

  private

  def rating_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:rating).permit(:rating)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
