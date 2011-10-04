class AdminController < ApplicationController

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.create(params[:photo])
    @photo.save
  end
end
