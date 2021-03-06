class Title < ApplicationRecord
  has_many :images
  has_many :videos
  has_many :stars
  has_many :actors
  has_many :writers
  has_many :directors

  has_many :ratings
  has_many :users, through: :ratings
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :awards
  has_and_belongs_to_many :companies
end
