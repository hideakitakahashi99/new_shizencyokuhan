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
		@cart = current_cart
	end


	def show
		@staff_member = StaffMember.find(params[:id])
		@store = @staff_member.store
		@cart = current_cart
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



