class Staff::SchedulesController < Staff::Base
	def index
		@schedules = Schedule.order(:created_at)
		.page(params[:page]) 
	end

	def create
		if params[:harvest]
			@schedule = current_staff_member.schedules.build(harvest_schedule_params)
			if @schedule.save
				flash[:success] = "Harvest Schedule created!"
				redirect_to :staff_root
			else
			render 'staff_root'
 	       end
		elsif params[:store]
			@schedule = current_staff_member.schedules.build(store_schedule_params)
			if @schedule.save
				flash[:success] = "Store Schedule created!"
				redirect_to :staff_root
			else
			render 'staff_root'
	        end
	    end
	end


	def destroy
		@schedules = current_staff_member
	end

	private


	def store_schedule_params
		params.require(:schedule).permit(:opening, :opening_date, :closing_date)
	end

	def harvest_schedule_params
		params.require(:schedule).permit(:harvest, :harvest_date)
	end
end
