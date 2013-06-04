class AddPointAddressDishInformation < ActiveRecord::Migration
  def change
    add_column :foods, :longitude, :float
    add_column :foods, :latitude, :float
  end
end
