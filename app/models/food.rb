class Food < ActiveRecord::Base
  attr_accessible :name, :restaurant, :picture, :restaurant_id, :latitude, :longitude, :distance_away
  has_many :images

  # def distance_away
  #   self[:distance_away]
  # end
  # 
  def distance_away= value
    self[:distance_away] = value
  end
    
end
