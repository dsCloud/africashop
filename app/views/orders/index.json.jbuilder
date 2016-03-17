json.array!(@orders) do |order|
  json.extract! order, :id, :phone_number, :address, :sector, :province, :user_id, :buyer_id, :seller_id
  json.url order_url(order, format: :json)
end
