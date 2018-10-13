class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.text :name
      t.text :address
      t.text :open_hrs
      t.integer :cost_two
      t.text :phone
      t.integer :user_id
      t.text :image

      t.timestamps
    end
  end
end
