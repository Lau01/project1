class Review < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :restaurant

  validates :content, presence: true, length: {maximum: 400}

end
