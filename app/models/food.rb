class Food < ActiveRecord::Base
  attr_accessible :name, :restaurant, :picture, :restaurant_id, :latitude, :longitude, :distance_away
  has_one :image

  def distance_away= value
    self[:distance_away] = value
  end
    
end
