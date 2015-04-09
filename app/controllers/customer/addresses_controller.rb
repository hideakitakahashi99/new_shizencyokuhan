class Customer::AddressesController < Customer::Base
	  before_action :set_address, only: [:show, :edit, :update, :destroy]

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
		@cart = current_cart
		if @cart.line_items.empty?
			redirect_to :customer_staff_member_store_index, notice: "カートは空です"
			return
		end
		@address = Address.new

		respond_to do |format|
		format.html 
		format.json { render json: @address }
		end
	end

	def create 

  webpay = WebPay.new(WEBPAY_SECRET_KEY)
  charge = webpay.charge.create(currency: 'jpy', amount: current_cart.total_price, card: params['webpay-token'])
  
  		@customer = current_customer
		@address = @customer.addresses.build(address_params)
		@address.add_line_items_from_cart(current_cart)

		respond_to do |format|
			if @address.save
				Cart.destroy(session[:cart_id])
				session[:cart_id] = nil
				OrderNotifier.received(@address).deliver
				OrderNotifier.shipped(@address).deliver
				format.html { redirect_to :customer_staff_member_store_index, notice: 'ご注文ありがとうございます' }
				format.json { render json: @address, status: :created, location: @address }
			else
				@cart = current_cart
				format.html { render action: "new" }
				format.json { render json: @address.errors, status: :unprocessable_entity }
			end
		end
	end


	 private
    # Use callbacks to share common setup or constraints between actions.
    def set_address
      @address = Address.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def address_params
      params.require(:address).permit(
      	:postal_code, :prefecture, :city, :address1, :address2
      	) 
    end
end
