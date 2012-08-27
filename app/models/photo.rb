class Photo < ActiveRecord::Base
  attr_accessible :url, :email, :facebook_id, :udid, :latitude, :longitude, :public
end