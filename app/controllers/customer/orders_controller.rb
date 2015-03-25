class Customer::OrdersController < Customer::Base
	  before_action :set_order, only: [:show, :edit, :update, :destroy]

	def show
	end

	def new
		@cart = current_cart
		if @cart.line_items.empty?
			redirect_to :customer_staff_member_store_index, notice: "カートは空です"
			return
		end
		@order = Order.new

		respond_to do |format|
		format.html 
		format.json { render json: @order }
		end
	end

	def create 

  webpay = WebPay.new(WEBPAY_SECRET_KEY)
  charge = webpay.charge.create(currency: 'jpy', amount: current_cart.total_price, card: params['webpay-token'])
  
  		
		@order = Order.new(order_params)
		@order.add_line_items_from_cart(current_cart)

		respond_to do |format|
			if @order.save
				Cart.destroy(session[:cart_id])
				session[:cart_id] = nil
				OrderNotifier.received(@order).deliver
				OrderNotifier.shipped(@order).deliver
				format.html { redirect_to :customer_staff_member_store_index, notice: 'ご注文ありがとうございます' }
				format.json { render json: @order, status: :created, location: @order }
			else
				@cart = current_cart
				format.html { render action: "new" }
				format.json { render json: @order.errors, status: :unprocessable_entity }
			end
		end
	end


	 private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(
      	:name, :address, :email, :pay_type
      	) 
    end
end
