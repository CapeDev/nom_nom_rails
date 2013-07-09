class ImageController < ApplicationController
  def create
    food = Food.find(params[:food_id])
    @model = Image.build_with_image(params[:image])
    @model.food = food
  
    respond_to do |wants|
      if @model.save
        wants.json { render json: @model, status: :created, location: [food, @model] }
      else
        wants.json { render json: @model.errors, status: :unprocessable_entity }
      end
    end
  end
end
