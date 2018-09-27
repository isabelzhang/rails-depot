class Cart < ApplicationRecord
  # A cart has many line items 
  # If a cart is destroyed, all associated line_items are destroyed
  has_many :line_items, dependent: :destroy
end
