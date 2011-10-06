class PhotosController < ApplicationController
  respond_to :html, :js
  before_filter Proc.new { @user = User.find params[:user_id] }
  before_filter Proc.new { @photos = @user.photos.all }, :only => [:index, :preview]
  
  def index; end
  
  def preview; end
  
  def create
    @photo = @user.photos.create params[:photo]
  end
  
  def update
    @photo = @user.photos.find params[:id]
    @photo.update_attributes params[:photo]
  end
  
  def destroy
    @photo = @user.photos.find params[:id]
    @photo.destroy
  end
end
