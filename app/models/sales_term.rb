class SalesTerm < ApplicationRecord
	belongs_to :staff_member
	
	validates :delivery_fee, numericality: {only_integer: true, greater_than_or_equal_to: 0, message: "0以上の半角数字を入力して下さい"}
end
