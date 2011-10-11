class AdminController < ApplicationController

  def new
    @photo = Photo.new
  end

  def delete
    @photo = Photo.find(params[:id])
    @photo.delete
  end

  def create
    @photo = Photo.create(params[:photo])
    @photo.save
    redirect_to :action => :new
  end

  def index
    @photos = Photo.all
  end
end
