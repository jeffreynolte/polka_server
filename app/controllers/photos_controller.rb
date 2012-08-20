class PhotosController < ApplicationController
	protect_from_forgery :except => :create 

	def create
    if params[:key].present? && params[:key] == 'wVVJ0dVdwunkzzvB'
      
      p = Photo.create(
        :url         => params[:url],
        :facebook_id => params[:facebook_id],
        :udid        => params[:udid],
        :latitude    => params[:latitude],
        :longitude   => params[:longitude]
      )
      
      render(:text => "ok") and return
    end
    render :nothing => true
	end

  def index
    photos = Photo.order("created_at DESC").all
    render :json => photos.to_json
  end

end