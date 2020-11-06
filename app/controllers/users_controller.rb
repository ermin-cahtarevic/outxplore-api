class UsersController < ApplicationController
  include CurrentUserConcern

  def fetch_user
    user = User.find(params['user']['id'])

    if user
      render json: {
        status: 200,
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
      render json: {
        status: 404
      }
    end
  end

  def update_photo
    photo = Cloudinary::Uploader.upload(params[:photo])

    if @current_user.update_attribute(:photo, photo['url'])
      render json: {
        status: 200,
        user: {
          id: @current_user.id,
          first_name: @current_user.first_name,
          last_name: @current_user.last_name,
          email: @current_user.email,
          photo: @current_user.photo,
          host: @current_user.host,
          phone: @current_user.phone,
        }
      }
    else
      render json: { status: 500 }
    end
  end
end
