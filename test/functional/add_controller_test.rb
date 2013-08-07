require 'test_helper'
require 'base64'

class AddControllerTest < ActionController::TestCase
  test "If name is not passed return 400" do
    image = Rack::Test::UploadedFile.new(Rails.root.join("test/fixtures/files/food_image.jpg"), 'image/jpeg')
    post(:create, {:image => image, :longitude => '-122.417731', :latitude => '37.793448'})
    assert_response :bad_request
  end

  test "If image is not passed return 400" do
    post(:create, {:name => "Burger", :longitude => '-122.417731', :latitude => '37.793448'})
    assert_response :bad_request
  end

  test "If longitude is not passed return 400" do
    image = Rack::Test::UploadedFile.new(Rails.root.join("test/fixtures/files/food_image.jpg"), 'image/jpeg')
    post(:create, {:image => image, :name => 'Burger', :latitude => '37.793448'})
    assert_response :bad_request
  end

  test "If latitude is not passed return 400" do
    image = Rack::Test::UploadedFile.new(Rails.root.join("test/fixtures/files/food_image.jpg"), 'image/jpeg')
    post(:create, {:image => image, :name => 'Burger', :longitude => '-122.417731'})
    assert_response :bad_request
  end
  
  test "creation of a new food item using base64 encoded image" do
    count = Food.all.count
    
    image = File.open("test/fixtures/files/food_image.jpg")
    base64_encoded_image = Base64.encode64(image.read)
    post(:create, {:image => base64_encoded_image, :name => 'Burger', :latitude => '37.793448', :longitude => '-122.417731'})
    
    count = Food.all.count

    assert_response :created
    assert_equal(3,count)
    assert_equal(-122.417731, Food.where(name: 'Burger').first.longitude)
  end
end
