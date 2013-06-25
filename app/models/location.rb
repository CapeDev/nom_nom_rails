class Location
  attr_accessor :longitude
  attr_accessor :latitude
  
  def initialize(coordinates)
    @longitude = coordinates[:longitude]
    @latitude = coordinates[:latitude] 
  end
  
  def haversine_distance_from_point(coordinates)            
    earths_radius = 6371 # in km
    latitude_difference_in_radians = (coordinates.latitude - @latitude) * Math::PI / 180
    longitude_difference_in_radians = (coordinates.longitude - @longitude) * Math::PI / 180
    
    current_location_latitude_in_radians = @latitude * Math::PI / 180
    current_location_longitude_in_radians = @longitude * Math::PI / 180

    a = Math.sin(latitude_difference_in_radians/2) * Math.sin(latitude_difference_in_radians/2) +
    Math.sin(longitude_difference_in_radians/2) * Math.sin(longitude_difference_in_radians/2) * Math.cos(current_location_latitude_in_radians) * Math.cos(current_location_longitude_in_radians) 
                              
    c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a))
    
    earths_radius * c    
  end
end