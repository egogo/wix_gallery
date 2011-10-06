class PhotosController < ApplicationController
  respond_to :html, :js
  before_filter Proc.new { @photos = Photo.all }, :only => [:index, :preview]
  
  def index; end
  
  def preview; end
  
  def create
    @photo = Photo.create params[:photo]
  end
  
  def update
    @photo = Photo.find params[:id]
    @photo.update_attributes params[:photo]
  end
  
  def destroy
    @photo = Photo.find params[:id]
    @photo.destroy
  end
end
