class HostApplication < ApplicationRecord
  belongs_to :user

  validates_presence_of :activity_tpye, :previous_hosting_experience, :detailed_experience, :guest_max_num,
                        :additional_experience_info, :location, :location_type, :detailed_description, :links
end
