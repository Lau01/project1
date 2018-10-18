class Review < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :restaurant

  has_and_belongs_to_many :liked_by, class_name: 'User'

  validates :content, presence: true, length: {maximum: 400}
  validates :rating, presence: true, numericality: { less_than_or_equal_to: 5, greater_than_or_equal_to: 0,  only_integer: true }

end
