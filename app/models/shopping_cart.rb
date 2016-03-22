class ShoppingCart < ActiveRecord::Base
      acts_as_shopping_cart

  def tax_pct
    18.0
  end

  def shipping_cost
    5 # defines a flat $5 rate
  end

end
