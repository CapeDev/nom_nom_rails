require 'test_helper'        

class LocationTest < ActiveSupport::TestCase
  
  test "calculate the distance from a point that is a mile away" do
    guerrero_and_17th = Location.new({:latitude => 37.76313, :longitude => -122.42398})
    guerrero_and_26th = Location.new({:latitude => 37.748743, :longitude => -122.422521})
    
    distance_away = guerrero_and_17th.distance_from_point(guerrero_and_26th)
    assert_equal distance_away,1
  end
end
