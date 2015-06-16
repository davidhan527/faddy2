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

#<% if results.present? %>
  #<% pictures.each do |picture| %>
      #<div>
        #<img class="food_pic" src="<%=picture.images.standard_resolution.url%>">
      #</div>
        #<div class="profile_section">
          #<div>
            #<h3 class="location"><%= picture.location.name %> </h3>
            #<% if picture.caption.present? && picture.caption.has_key?("text") %>
              #<p class="caption"><%= picture.caption["text"] %> </p>
            #<% end %>
            #<p class="likes">Likes: <%= picture.likes["count"] %></p>
            #<p class="tags">Tags: #<%= picture.tags.join(" #") %></p>
            #<img class="profile_pic" src="<%= picture.user.profile_picture%>">
            #<h4 class="username" class="user"><%= picture.user.full_name%> (@<%= picture.user.username %>)</h4>
          #</div>
        #</div>
  #<% end %>
#<% end %>

