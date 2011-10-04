class Photo < ActiveRecord::Base
  has_attached_file :image, :styles => {:big => "1280x1024>", :medium => "640x480>", :small => "320x240>", :thumb => "100x80>" }
end
