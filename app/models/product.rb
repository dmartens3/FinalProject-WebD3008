class Product < ApplicationRecord
  #allow an image to be attached and returns a thumbnail when you ask for the thumb variant.
  has_many_attached :images do |i|
    i.variant :thumb, resize_to_limit: [50, 50]
  end
end
