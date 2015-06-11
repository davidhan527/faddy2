class RestaurantsController < ApplicationController
  def index

  end

  def instagram_results
    puts "========================================================="
    respond_to do |format|
      format.json {}
    end

    redirect_to :restaurants
  end
end
