class HostApplicationController < ApplicationController
  include CurrentUserConcern

  def create
    if @current_user.host_application
      render json: {
        status: :forbidden,
        message: 'You have already applied!'
      }
      return
    end

    @host_application = @current_user.create_host_application!(
      activity_type: params['host_application']['activity_type'],
      previous_hosting_experience: params['host_application']['previous_hosting_experience'],
      guest_max_num: params['host_application']['guest_max_num'],
      additional_experience_info: params['host_application']['additional_experience_info'],
      location: params['host_application']['location'],
      location_type: params['host_application']['location_type'],
      detailed_description: params['host_application']['detailed_description'],
      links: params['host_application']['links']
    )

    respond_to do |format|
      if @host_application
        HostApplicationMailer.with(application: @host_application).application(@host_application).deliver_now

        format.json {
          render json: {
            status: :created,
            applied: true
          }
        }
      else
        format.json {
          render json: { status: 500 }
        }
      end
    end
  end
end
