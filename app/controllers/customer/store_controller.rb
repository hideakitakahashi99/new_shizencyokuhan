class Customer::StoreController < Customer::Base
 before_action :authorize



	def index		
		if params[:staff_member_id]
		@staff_member = StaffMember.find(params[:staff_member_id])
		@products = @staff_member.products
	else
		@products = Product
	end
		@products = @products.order(:category)
		.page(params[:page]) 

	customer = current_customer
    @cart = Cart.find_by!(staff_member_id: @staff_member.id, customer_id: customer.id)
   
    rescue ActiveRecord::RecordNotFound
    @cart = Cart.create(:staff_member_id => @staff_member.id, :customer_id => customer.id)
	
	end


	def show
		@staff_member = StaffMember.find(params[:staff_member_id])
		@store = @staff_member.store

		@cart = Cart.find!(["staff_member_id = ? and customer_id = ?", @staff_member.id, customer.id])
  rescue ActiveRecord::RecordNotFound
    	 @cart = Cart.create(:staff_member_id => @staff_member.id, :customer_id => customer.id)
	
	end




	private

	def authorize
		unless current_customer
			flash.alert = 'ログインが必要です。'
			redirect_to :customer_login
		end
	end

	def staff_member_params
		params.require(:staff_member).permit(
			:farm_name, :email, :password, :family_name, :given_name,
			:family_name_kana, :given_name_kana,
			:suspended, :name, 
			:description, :image
			)
	end
end



