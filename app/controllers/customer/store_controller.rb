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
			:vegetable_name_one, :vegetable_name_two, :vegetable_name_three,
			:vegetable_name_four, :vegetable_name_five, :vegetable_name_six,
			:vegetable_name_seven, :vegetable_name_eight, :vegetable_name_nine,
			:vegetable_name_ten, :vegetable_name_eleven,
			:start_date, :end_date, :suspended, :name, 
			:description, :image
			)
	end
end



