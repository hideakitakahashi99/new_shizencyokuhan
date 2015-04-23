class Staff::OrdersController < Staff::Base

	def index
		@staff_member = current_staff_member
		staff_member_id = @staff_member.id
		@orders = Order.where(staff_member_id: @staff_member.id)
		@total_sales = @orders.sum(:total_price)
		
	end

	def show
		@staff_member = current_staff_member
		@order = Order.find(params[:id])
	end

	def new
	end
end

