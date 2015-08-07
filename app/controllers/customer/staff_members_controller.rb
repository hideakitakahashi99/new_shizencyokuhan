class Customer::StaffMembersController < Customer::Base

	before_action :authorize
	skip_before_action :authorize, only: [:show] 

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
		@customer = Customer.find(params[:id])
		@staff_members = @customer.followed_staff_members.all
		render 'show_follow'
	end

	def followers
		@title = "Followers"
		@staff_member = StaffMember.find(params[:id])
		@customers = @staff_member.followers.all
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

	def sales_term
		@staff_member = StaffMember.find(params[:staff_member_id])
	end

	def schedules
		@customer = current_customer
		@staff_member = StaffMember.find(params[:staff_member_id])
		@schedules = @staff_member.schedules.all
		render 'customer/staff_members/schedules'
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

