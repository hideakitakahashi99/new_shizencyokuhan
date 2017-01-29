class LineItem < ApplicationRecord
	belongs_to :product
	belongs_to :cart
	belongs_to :order
	belongs_to :address

	def total_price
		product.price * quantity
	end

end
