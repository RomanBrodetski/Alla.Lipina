class HomeController < ApplicationController
  def index
    @photos = Photo.all
  end
  def about

  end
end
