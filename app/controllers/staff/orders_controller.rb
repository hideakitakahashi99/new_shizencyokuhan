class Staff::OrdersController < Staff::Base

	def index
		@staff_member = current_staff_member
		staff_member_id = @staff_member.id
		@credit_orders = Order.where(staff_member_id: @staff_member.id, created_at: Time.now.all_month, payment: "クレジット支払い")
		@money_orders = Order.where(staff_member_id: @staff_member.id, created_at: Time.now.all_month, payment: "代金引き換え")
		@orders = Order.where(staff_member_id: @staff_member.id, created_at: Time.now.all_month)
		@c_total_sales = @credit_orders.sum(:total_price)
		@m_total_sales = @money_orders.sum(:total_price)
		@total_sales = @orders.sum(:total_price)
		@month = Time.now.month
	end

	def prev_month
		prev = Time.now - 1.month

		@staff_member = current_staff_member
		staff_member_id = @staff_member.id
		@credit_orders = Order.where(staff_member_id: @staff_member.id, created_at: prev.all_month, payment: "クレジット支払い")
		@money_orders = Order.where(staff_member_id: @staff_member.id, created_at: prev.all_month, payment: "代金引き換え")
		@orders = Order.where(staff_member_id: @staff_member.id, created_at: prev.all_month)
		@c_total_sales = @credit_orders.sum(:total_price)
		@m_total_sales = @money_orders.sum(:total_price)
		@total_sales = @orders.sum(:total_price)
		@month = prev.month

	end

	def the_month_before_last
		tmbl = Time.now - 2.month
		@staff_member = current_staff_member
		staff_member_id = @staff_member.id
		@credit_orders = Order.where(staff_member_id: @staff_member.id, created_at: tmbl.all_month, payment: "クレジット支払い")
		@money_orders = Order.where(staff_member_id: @staff_member.id, created_at: tmbl.all_month, payment: "代金引き換え")
		@orders = Order.where(staff_member_id: @staff_member.id, created_at: tmbl.all_month)
		@c_total_sales = @credit_orders.sum(:total_price)
		@m_total_sales = @money_orders.sum(:total_price)
		@total_sales = @orders.sum(:total_price)
		@month = tmbl.month
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
		flash.notice = '発送通知が完了しました。'
		redirect_to :action => 'index'
	end
end

