class SearchController < ApplicationController
  @location = 'location=37.763095,-122.424599'
  @@key = 'AIzaSyDoAwfKcmfVf8cvR_36X7s4D7AKWovmYzc'
  def index
    results = Food.all
    
    results.each do |result|
      result.picture = "https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&sensor=false&key=#{@@key}&photoreference=#{result.picture}"
    end

    render json: results
  end
end
