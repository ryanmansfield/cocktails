class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :ratings
  validates :name, uniqueness: true, presence: true, allow_blank: false
  has_one_attached :photo
end