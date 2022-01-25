class Venue < ApplicationRecord
  has_many :favourites, dependent: :destroy
  has_many :users, through: :favourites

  CATEGORIES = ["cafe", "park", "combini"]

end
