class RegistrationsController < ApplicationController
  # rubocop:disable Metrics/MethodLength
  def create
    user = User.create!(
      first_name: params['user']['first_name'],
      last_name: params['user']['last_name'],
      email: params['user']['email'],
      password: params['user']['password'],
      password_confirmation: params['user']['password_confirmation']
    )

    if user
      session[:user_id] = user.id
      render json: {
        status: :created,
        logged_in: true,
        user: {
          id: user.id,
          first_name: user.first_name,
          last_name: user.last_name,
          email: user.email,
          photo: user.photo,
          host: user.host,
          phone: user.phone,
        }
      }
    else
      render json: { status: 500 }
    end
  end
  # rubocop:enable Metrics/MethodLength
end
