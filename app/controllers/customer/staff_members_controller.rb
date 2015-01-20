class Customer::StaffMembersController < Customer::Base

	before_action :authorize

	def index
		@staff_members = StaffMember.order(:family_name_kana, :given_name_kana)
		@staff_members = @staff_members.page(params[:page]) 
	end

	def show
		@customer = current_customer
		@staff_member = StaffMember.find(params[:id])
		
	end

	def following
		@title = "Following"
		@staff_member = StaffMember.find(params[:id])
		@customers = @staff_member.followed_customers.paginate(page: params[:page])
		render 'show_follow'
	end

	def followers
		@title = "Followers"
		@staff_member = StaffMember.find(params[:id])
		@customers = @staff_member.followers.paginate(page: params[:page])
		render 'show_follow'
	end

	def open_index
		@staff_members = StaffMember.where(:suspended => true)
		@staff_members = @staff_members.page(params[:page]) 
	end

    def search
    	@search_form = Customer::StaffMemberSearchForm.new(params[:search])
		@products = @search_form.search.page(params[:page]) 
		render 'customer/staff_members/search_category'
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
			:start_date, :end_date, :suspended, :name, 
			:description, :image
			)
	end
end

