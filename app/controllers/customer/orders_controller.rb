class Customer::OrdersController < Customer::Base
	  before_action :set_order, only: [:show, :edit, :update, :destroy]

	def show
		@customer = current_customer
	end

	def edit
		@customer = current_customer
	end

	def update

		@customer = current_customer

	end

	def new
		@cart = Cart.find_by(staff_member_id: @staff_member.id, customer_id: @customer.id)
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
  	
		@order = Order.new(order_params)

		respond_to do |format|
			if @order.save

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
        :staff_member_id
        ) 
    end
end
