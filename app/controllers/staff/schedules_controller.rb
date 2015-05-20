class Staff::SchedulesController < Staff::Base
	def index
		@schedules = Schedule.order(:created_at)
		.page(params[:page]) 
	end

	def edit
		@schedule = Schedule.find(params[:id])
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

	def push
		@schedule = Schedule.find(params[:id])
		@staff_member = current_staff_member 
		@customers = @staff_member.followers.all
		StaffMemberMailer.push_info(@schedule, @staff_member, @customers).deliver
		flash.notice = 'フォロワーにお便りを出しました。'
		redirect_to :staff_root
	end


	def destroy
		@schedule = Schedule.find(params[:id])
		@schedule.destroy!
		flash.notice = 'スケジュールを削除しました。'
		redirect_to :staff_root
	end

	private


	def store_schedule_params
		params.require(:schedule).permit(:opening, :opening_date, :closing_date)
	end

	def harvest_schedule_params
		params.require(:schedule).permit(:harvest, :harvest_date, :event_url)
	end
end
