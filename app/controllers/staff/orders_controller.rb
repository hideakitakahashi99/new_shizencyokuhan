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

		respond_to do |format|
			format.html
			format.pdf do
				pdf = OrderPDF.new(@order, @address, @staff_member)
				pdf.font "vendor/fonts/ipaexg.ttf"

				send_data pdf.render,
				filename:  "#{@order.id}.pdf",
				type:      "application/pdf",
				disposition: "inline"
			end
		end

	end

	def new
	end

	def shipped

		@staff_member = current_staff_member
		@order = Order.find(params[:order_id])
		@customer = Customer.find_by(id: @order.customer_id)
		@address = Address.find_by(id: @order.address_id)
		@order.shipped = !@order.shipped
		@order.save
		OrderNotifier.shipped(@staff_member, @address, @order, @customer).deliver
		render 'shipped'
	end
end

