class UsersController < ApplicationController

  def get_user
    user = User.find(params['user']['id'])

    if user
      render json: {
        status: 200,
        user: {
          id: user.id,
          first_name: user.first_name,
          last_name: user.last_name,
          email: user.email,
        },
      }
    else
      render json: {
        status: 404,
      }
    end
  end
end
