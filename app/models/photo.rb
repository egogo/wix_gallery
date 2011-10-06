class Photo < ActiveRecord::Base
  belongs_to :user
  
  validates :title, :presence => true
  validates :preview_url, :presence => true
  validates :url, :presence => true
end
