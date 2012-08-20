class Photo < ActiveRecord::Base
  attr_accessible :url, :facebook_id, :udid, :latitude, :longitude
end
