class Product < ApplicationRecord
  #allow an image to be attached and returns a thumbnail when you ask for the thumb variant.
  has_many_attached :images do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end
end
