class Image < ApplicationRecord

  belongs_to :product
  



end


# Deleted image_urls from product model, rake db:migrated, and created the image.rb model and api/images controller

# How to add new photos to the products? 
