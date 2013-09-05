class Attendee < ActiveRecord::Base
  attr_accessible :address, :bio, :name, :picture, :twitter_handle
  mount_uploader :picture, PictureUploader
  geocoded_by :address
  after_validation :geocode
  acts_as_gmappable :process_geocoding => false
end
