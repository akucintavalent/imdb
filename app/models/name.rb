class Name < ApplicationRecord
  has_many :stars
  has_many :actors
  has_many :writers
  has_many :directors
end
