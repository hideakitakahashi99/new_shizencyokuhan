class Order < ActiveRecord::Base
	has_many :line_items, dependent: :destroy
	has_one :address, dependent: :destroy
	belongs_to :customer

 PAYMENT_TYPES = [ "現金", "クレジットカード", "注文書"]

	def add_line_items_from_cart(cart)
		cart.line_items.each do |item|
			item.cart_id = nil
			line_items << item
		end
	end

	def add_address(address)
		address do |add_address|
		address << add_address
	end
	end


end
