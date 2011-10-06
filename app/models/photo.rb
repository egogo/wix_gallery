class Photo < ActiveRecord::Base
  validates :title, :presence => true
  validates :preview_url, :presence => true
  validates :url, :presence => true
end
