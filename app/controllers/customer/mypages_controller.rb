class Customer::MypagesController < Customer::Base
    def index
		@customer = current_customer
	end   	


	def show
		@customer = current_customer
	end

	def following
		@title = "Following"
		@customer = current_customer
		@staff_members = @customer.followed_staff_members.paginate(page: params[:page])
		render 'show_follow'
	end

	def followers
		@title = "Followers"
		@customer = Customer.find(params[:id])
		@staff_members = @customer.followers.paginate(page: params[:page])
		render 'show_follow'
	end
end
