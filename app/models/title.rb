class Title < ApplicationRecord
  has_many :ratings
  has_many :users, through: :ratings
  has_many :images
  has_many :videos

  has_and_belongs_to_many :categories
  has_and_belongs_to_many :awards
end
