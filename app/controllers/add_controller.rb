class AddController < ApplicationController
  def create

    if params[:image].nil? || params[:name].nil? || params[:longitude].nil? || params[:latitude].nil?
      head :bad_request
    else
      image = Image.build_with_image(params[:image])

      Food.create(name: params[:name],
                  restaurant: 'RetrieveFromGoogle',
                  picture: "#{request.protocol}#{request.host_with_port}/data/#{image.name}",
                  restaurant_id: 'RetrieveFromGoogle',
                  longitude: params[:longitude],
                  latitude: params[:latitude])

      head :created
    end
  end
end
