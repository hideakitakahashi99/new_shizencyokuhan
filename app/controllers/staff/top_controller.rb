class Staff::TopController < Staff::Base
	skip_before_action :authorize

	def index
		if current_staff_member
			@staff_member = current_staff_member
			@schedule = @staff_member.schedules.build
			@schedules = @staff_member.schedules.order(:created_at)
			@schedules = @schedules.page(params[:page])
			
			
			render action: 'dashboard'
		else
		render action: 'index'
	end
	end

	def toggle
		render nothing: true
		@staff_member = current_staff_member
		@staff_member.suspended = !@staff_member.suspended
		@staff_member.save
	end

end
