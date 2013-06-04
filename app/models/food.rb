class Food < ActiveRecord::Base
  attr_accessible :name, :restaurant, :picture, :restaurant_id, :latitude, :longitude
end
