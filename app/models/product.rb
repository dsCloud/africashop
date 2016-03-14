class Product < ActiveRecord::Base
  if Rails.env.development?
     has_attached_file :image, styles: { medium: "200x", thumb: "100x100>" }, default_url: "missingimage.png"
    else
  require 'aws-sdk-v1'
  require 'aws-sdk'
  has_attached_file :image, styles: { medium: "200x", thumb: "100x100>" }, default_url: "missingimage.png",
  storage: :s3,
  #bucket: 'dsafricashop',
  s3_credentials: "#{Rails.root}/config/application.yml"
  #path: "/:product/:style/:id/:filename"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  #product.image.url => 'https://dsafricashop.s3.amazonaws.com/'
  end
end


