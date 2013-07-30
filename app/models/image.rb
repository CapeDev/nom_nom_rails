class Image < ActiveRecord::Base
  attr_accessible :path
  attr_accessible :name

  belongs_to :food
  
  def self.build_with_image(upload)
    # TODO: find something better than timestamp. Will do for now.
    name =  "#{Time.now.to_i}.png"
    directory = "public/data"
    path = File.join(directory, name)
    File.open(path, "wb") { |f| f.write(upload.read) }
    Image.new(:path => path, :name => name)
   end
end
