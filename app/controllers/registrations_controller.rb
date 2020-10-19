class RegistrationsController < ApplicationController
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
        },
      }
    else
      render json: { status: 500 }
    end
  end
end
