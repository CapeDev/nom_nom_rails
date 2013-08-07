class SearchController < ApplicationController
  @@key = 'AIzaSyDoAwfKcmfVf8cvR_36X7s4D7AKWovmYzc'
  
  def index
    user_location = Location.new(params)       
    
    q = "%#{params[:search_term]}%"
    results = Food.where("lower(name) LIKE ?", q.downcase)   
        
    results = [results].flatten.compact

    results.each do |result|
      result.picture = "#{result.picture}"
    end

    render json: results
  end
end
