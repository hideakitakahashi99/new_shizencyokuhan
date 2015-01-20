class Customer::TopController < Customer::Base
	def index
		if current_customer
		@open_staff_members = StaffMember.where(:suspended => true)
		@open_staff_members = @open_staff_members.page(params[:page]) 

		@staff_members = StaffMember.all
		
		@schedules = Schedule.order(:created_at)
		@schedules = @schedules.page(params[:page])

		@staff_addresses = StaffAddress.all
		
		@hash = Gmaps4rails.build_markers(@staff_addresses) do |staff_member, marker|
 		 marker.lat staff_member.latitude
		 marker.lng staff_member.longitude

		@search_form = Customer::StaffMemberSearchForm.new(params[:search])
		

		end
		render action: 'dashboard'
		else
		render action: 'index'

		
		end
	end

	

end
