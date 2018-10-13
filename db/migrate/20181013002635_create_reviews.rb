class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :content
      t.float :rating
      t.integer :user_id
      t.integer :restaurant_id
      t.text :image

      t.timestamps
    end
  end
end
