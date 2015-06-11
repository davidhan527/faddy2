class RestaurantsController < ApplicationController
  before_action :connect_to_instagram, only: :index

  def index

  end

  def instagram_results
    results = Instagram.media_search(lat, long, count: 100)
    respond_to do |format|
      format.json {}
    end

    redirect_to :restaurants
  end

  private

  def connect_to_instagram
    client = Instagram.client(:access_token => session[:access_token])
  end

  def lat
    params[:latitude].to_s
  end

  def long
    params[:longitude].to_s
  end
end
