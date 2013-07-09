require 'test_helper'

class ImageControllerTest < ActionController::TestCase
  fixtures :foods
  test "file upload" do
    parent_food = foods(:one)
    image = Rack::Test::UploadedFile.new(Rails.root.join("test/fixtures/files/food_image.jpg"), 'image/jpeg')
    post :create, :image => image, :food_id => parent_food.id, :format => :json
    assert_response :success
    
    parent_food.reload
    assert parent_food.images.size == 1
  end
end
