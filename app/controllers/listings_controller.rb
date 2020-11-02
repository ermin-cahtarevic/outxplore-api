class ListingsController < ApplicationController
  include CurrentUserConcern

  before_action :authorize_host, only: :create

  # rubocop:disable Metrics/MethodLength
  def create
    photo_urls = []

    params[:photos].each do |_key, photo|
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
      photos: photo_urls
    )

    if @listing
      render json: {
        status: 200,
        listing: @listing
      }
    else
      render json: { status: 500 }
    end
  end
  # rubocop:enable Metrics/MethodLength

  def index
    @listings = Listing.all

    render json: {
      status: 200,
      listings: @listings
    }
  end

  def show
    @listing = Listing.find(params[:id])
    user = @listing.user

    if @listing
      render json: {
        status: 200,
        listing: @listing,
        user: {
          first_name: user.first_name,
          last_name: user.last_name,
          photo: user.photo
        }
      }
    else
      render json: { status: 404 }
    end
  end

  private

  def authorize_host
    render json: { status: 403 } unless @current_user.host
  end
end
