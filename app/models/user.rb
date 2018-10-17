class User < ApplicationRecord
  has_secure_password
  has_many :reviews
  has_and_belongs_to_many :liked_reviews, class_name: 'Review'
  validates :email, presence: true, uniqueness: true
end
