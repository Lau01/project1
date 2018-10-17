class CreateReviewsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews_users do |t|
      t.integer :user_id
      t.integer :review_id
    end
  end
end
