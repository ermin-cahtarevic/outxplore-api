class HostApplication < ApplicationRecord
  belongs_to :user

  validates_presence_of :activity_type, :previous_hosting_experience, :guest_max_num,
                        :additional_experience_info, :location, :location_type, :detailed_description, :links
end
