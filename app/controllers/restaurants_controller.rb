class RestaurantsController < ApplicationController
  before_action :connect_to_instagram, only: [:index, :instagram_results]

  def index
  end

  def instagram_results
    @results = PictureFinder.new(lat: lat, long: long).pictures

    respond_to do |format|
      format.json { render json: @results }
      format.js {}
      format.html { redirect_to :restaurants }
    end
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



