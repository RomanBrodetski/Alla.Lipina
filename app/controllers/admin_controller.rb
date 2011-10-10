class AdminController < ApplicationController

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.create(params[:photo])
    @photo.save
    redirect_to :action => :new
  end
end
