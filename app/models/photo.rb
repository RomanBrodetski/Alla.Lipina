class Photo < ActiveRecord::Base
  has_attached_file :image,
                    :styles => {:medium => "640x480>", :thumb => "100x80>"},
                    :storage => :s3,
                    :s3_credentials => "#{Rails.root}/config/s3.yml",
                    :path => ":attachment/:id/:style.:extension",
                    :bucket => 'alla.lipina.photos'
  has_attached_file :greyimage,
                    :styles => {:thumb => "100x80>"},
                    :storage => :s3,
                    :s3_credentials => "#{Rails.root}/config/s3.yml",
                    :path => ":attachment/:id/:style.:extension",
                    :bucket => 'alla.lipina.photos'
end
