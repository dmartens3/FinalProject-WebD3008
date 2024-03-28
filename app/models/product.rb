class Product < ApplicationRecord
  #allow an image to be attached and returns a thumbnail when you ask for the thumb variant.
  has_many_attached :images do |attachable|
    attachable.variant :thumb, resize_to_limit: [50, 50]
    attachable.variant :medium, resize_to_limit: [250, 250]
  end

  # Relationships
  belongs_to :category
end
