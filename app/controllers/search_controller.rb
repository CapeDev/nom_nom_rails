class SearchController < ApplicationController
  @@key = 'AIzaSyDoAwfKcmfVf8cvR_36X7s4D7AKWovmYzc'
  
  def index
    user_location = Location.new(params)

    results = Food.find_by_name(params[:search_term])
    
    results = [results].flatten.compact

    results.each do |result|
      result.picture = "#{result.picture}"
      result.distance_away = user_location.haversine_distance_from_point(result) if user_location.valid?
    end

    render json: results
  end
end
