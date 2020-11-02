class Listing < ApplicationRecord
  belongs_to :user

  validates_presence_of :title, :description, :activity_type, :guest_max_num, :price, :location, :photos
end
