class Order < ActiveRecord::Base
  validates :phone_number, :address, :sector, :province, presence: true

  belongs_to :product
  belongs_to :buyer, class_name: "User"
  belongs_to :seller, class_name: "User"
end
