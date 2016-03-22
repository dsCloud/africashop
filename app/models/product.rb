class Product < ActiveRecord::Base

#  if Rails.env.development?
  #      has_attached_file :image, styles: { medium: "200x", thumb: "100x100>" }, default_url: "missingimage.png"
 #       validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
 #       #validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
 #   else
        require 'aws-sdk-v1'
        require 'aws-sdk'
        has_attached_file :image, styles: { medium: "200x200", thumb: "100x100>" }, default_url: "missingimage.png",
        storage: :s3,
        bucket: 'dsafricashop',
        s3_credentials: "#{Rails.root}/config/S3.yml"
        #path: "/:product/:style/:id/:filename"
        validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
        #product.image.url => 'https://dsafricashop.s3.amazonaws.com/'
#  end
  validates :name, :description, :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates_attachment_presence :image
  belongs_to :user
  has_many :orders
  #has_many :order_items
  #to implement the product active status and show if true
  #default_scope { where(active: true) }

end


