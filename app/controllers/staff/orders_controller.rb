class Staff::OrdersController < Staff::Base

	def index
		@staff_member = current_staff_member
		staff_member_id = @staff_member.id
		@orders = Order.where(staff_member_id: @staff_member.id, created_at: Time.now.all_month)
		@total_sales = @orders.sum(:total_price)
		@month = Time.now.month
	end

	def show
		@staff_member = current_staff_member
		@order = Order.find(params[:id])
		@address = Address.find_by(id: @order.address_id)
	end

	def new
	end

	def shipped
		@staff_member = current_staff_member
		@order = Order.find(params[:order_id])
		@address = Address.find_by(id: @order.address_id)
		@order.shipped = !@order.shipped
		@order.save
		render 'shipped'
	end
end

