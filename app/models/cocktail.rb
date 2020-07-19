class Cocktail < ApplicationRecord
  has_many :ratings
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  # has_many :ratings
  validates :name, uniqueness: true, presence: true, allow_blank: false
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_name,
    against: [ :name ],
    using: {
      tsearch: { prefix: true }
  }

  def rating
    if self.ratings.exists?
      ratings_amount = self.ratings.count
      ratings_sum = 0
      self.ratings.each do |rating|
        ratings_sum += rating.rating
      end
      rating = ratings_sum / ratings_amount
    else
      rating = 0
    end
  end

end
