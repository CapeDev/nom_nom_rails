class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.string :restaurant
      t.string :restaurant_id
      t.string :picture
      t.timestamps
    end
  end
end
