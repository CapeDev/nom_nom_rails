class Image < ActiveRecord::Base
  attr_accessible :path
  attr_accessible :name

  belongs_to :food

  IMAGE_DIRECTORY = 'public/data'
  
  def self.build_with_base_64_encoded_image(image_encoded_as_base64)
    name =  "#{Time.now.to_i}.png"
    path = File.join(IMAGE_DIRECTORY, name)
    decoded_image = Base64.decode64(image_encoded_as_base64)
    File.open(path, 'wb') { |f| f.write(decoded_image) }
    Image.new(:path => path, :name => name)
  end
end
