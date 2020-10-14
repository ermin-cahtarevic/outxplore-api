class HostApplicationController < HostApplicationController
  include CurrentUserConcern

  def create
    host_application = @current_user.host_application.create!(
      activity_type: params['host_application']['activity_type'],
      previous_hosting_experience: params['host_application']['previous_hosting_experience'],
      detailed_experience: params['host_application']['detailed_experience'],
      guest_max_num: params['host_application']['guest_max_num'],
      additional_experience_info: params['host_application']['additional_experience_info'],
      location: params['host_application']['location'],
      location_type: params['host_application']['location_type'],
      detailed_description: params['host_application']['detailed_description'],
      links: params['host_application']['links']
    )

    if host_application
      response json: {
        status: :created,
        applied: true
      }
    else
      render json: { status: 500 }
    end
  end
end
