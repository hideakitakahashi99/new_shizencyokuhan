class SalesTerm < ActiveRecord::Base
	belongs_to :staff_member
	
	validates :delivery_fee, :format => { :with => /¥d+/, :message => "半角数字のみ入力できます" }
end
