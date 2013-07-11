require 'test_helper'        

class LocationTest < ActiveSupport::TestCase
  
  test "calculate the distance from a point that is a mile away" do
    guerrero_and_17th = Location.new({:latitude => 37.76313, :longitude => -122.42398})
    guerrero_and_26th = Location.new({:latitude => 37.748743, :longitude => -122.422521})
                 
    distance_away = guerrero_and_17th.haversine_distance_from_point(guerrero_and_26th)
    assert_equal distance_away,1
  end
  
  test "is not valid? when args are nil" do
    assert Location.new({}).valid? != true
    assert Location.new({:latitude => nil, :longitude => 123}).valid? != true
    assert Location.new({:latitude => 37.76313, :longitude => nil}).valid? != true
  end

  test "is valid?" do
    assert Location.new({:latitude => 37.76313, :longitude => -122.42398}).valid?
  end

  test "is valid? for string input" do
    location = Location.new({:latitude => "37.76313", :longitude => "-122.42398"})
    assert location.valid?
    assert_equal 37.76313, location.latitude 
    assert_equal -122.42398, location.longitude 
  end

  
end
