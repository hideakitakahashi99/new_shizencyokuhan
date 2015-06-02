class Customer::AddressesController < Customer::Base
	  before_action :set_address, only: [:show, :edit, :update, :destroy]

	def index
		@customer = current_customer
		@addresses = @customer.addresses.all
		@addresses = @customer.addresses.page(params[:page])
	end 

	def order
		@customer = current_customer
  		@staff_member_id = session[:order_staff]
  		@staff_member = StaffMember.find_by(id: @staff_member_id)
		cart = Cart.find_by(staff_member_id: @staff_member_id, customer_id: @customer.id)
		total_price = cart.total_price
		if params[:name] = 'webpay'
			webpay = WebPay.new(WEBPAY_SECRET_KEY)
  			charge = webpay.charge.create(currency: 'jpy', amount: total_price, card: params['webpay-token'])
  			@payment = "クレジット支払い"
  	    else
  	    	@payment = "代金引き換え"
  	    end
  	    
  		@address = Address.find(params[:id])	
  		@order = Order.new(:staff_member_id => @staff_member_id, :customer_id => @customer.id, :total_price => total_price, :address_id => @address.id)
  		@order.add_line_items_from_cart(cart)
  		address = @address
		

		respond_to do |format|
			if  @order.save!

		
				Cart.destroy(cart)
				

				OrderNotifier.received(@address, @payment, @order, @staff_member).deliver
				
				format.html { redirect_to :thanks_customer_staff_member_address, notice: 'ご注文ありがとうございます' }
				format.json { render json: @address, status: :created, location: @address }
			else
				@cart = current_cart
				format.html { redirect_to :customer_root, notice: '注文に失敗しました。' }
				format.json { render json: @address.errors, status: :unprocessable_entity }
			end
		end

	end


	def show
		@customer = current_customer
  		@staff_member = StaffMember.find(params[:staff_member_id])
		cart = Cart.find_by(staff_member_id: @staff_member.id, customer_id: @customer.id)
		total_price = cart.total_price
  		@address = Address.find(params[:id])
  		session[:order_staff] = @staff_member.id	
	end


	def edit
		@customer = current_customer
		@address = Address.find(params[:id])

	end

	def update
		@customer = current_customer
  		@staff_member = StaffMember.find(params[:staff_member_id])
  	    
  		@address = Address.find(params[:id])	
  		@address.assign_attributes(address_params) 
  		
		respond_to do |format|
			if @address.save!
							
				format.html { redirect_to :customer_staff_member_address, notice: '住所が選択されました。' }
				format.json { render json: @address, status: :created, location: @address }
			else
				@cart = current_cart
				format.html { render action: "new" }
				format.json { render json: @address.errors, status: :unprocessable_entity }
			end
		end
	end

	def new
		@customer = current_customer
  		@staff_member = StaffMember.find(params[:staff_member_id])
		@cart = Cart.find_by(staff_member_id: @staff_member.id, customer_id: @customer.id)
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
		@customer = current_customer
		@address = @customer.addresses.build(address_params)
  		address = @address

		respond_to do |format|
			if @address.save
				flash.notice = '新しい住所が登録されました。'
				format.html { redirect_to :customer_staff_member_addresses, notice: '新しい住所が登録されました。' }
				format.json { render json: @address, status: :created, location: @address }
			else
				@cart = current_cart
				format.html { render action: "new" }
				format.json { render json: @address.errors, status: :unprocessable_entity }
			end
		end
	end


	def destroy
		@customer = current_customer
		address = Address.find(params[:id])
		address.destroy!
		flash.notice = '選択された住所を削除しました。'
		redirect_to :customer_staff_member_addresses
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
    def phone_params(record_name)
	 	params.require(record_name).permit(phones: [ :number, :primary ])
	end
	def order_params
      params.require(:order).permit(
        :staff_member_id, :customer_id, :total_price, :address_id 
        ) 
    end
end
