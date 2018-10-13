class Restaurant < ApplicationRecord
  has_and_belongs_to_many :cuisines
  belongs_to :user, optional: true
  has_many :reviews
end
