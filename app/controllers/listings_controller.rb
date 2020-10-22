class ListingsController < ApplicationController
  include CurrentUserConcern

  before_action :authorize_host, only: :create

  def create
    photo_urls = []

    params[:photos].each do |key, photo|
      photo = Cloudinary::Uploader.upload(photo)
      photo_urls << photo['url']
    end

    @listing = @current_user.listings.create!(
      title: params[:title],
      description: params[:description],
      activity_type: params[:activity_type],
      guest_max_num: params[:guest_max_num],
      location: params[:location],
      price: params[:price],
      photos: photo_urls,
    )

    if @listing
      render json: {
        status: 200,
        listing: @listing,
      }
    else
      render json: { status: 500 }
    end
  end

  private

  def authorize_host
    render json: { status: 403 } unless @current_user.host
  end
end