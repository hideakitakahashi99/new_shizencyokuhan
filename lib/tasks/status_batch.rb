require "#{Rails.root}/app/models/staff_member.rb"

class StatusBatch

	def self.auto_status_open
		@staff_members = StaffMembers.all
		opening_dates = @staff_members.opening_date.compact

		if
		Time.now  < opening_dates < Time.now + 1.hour && opening_dates.staff_member.suspended = false

		opening_dates.staff_member.suspended = ! opening_dates.staff_member.suspended 
		opening_dates.destory
		opening_dates.staff_member.save
		end
	end


	def self.auto_status_close
		@staff_members = StaffMembers.all
		closing_dates = @staff_members.closing_date.compact

		if
		Time.now  < closing_dates < Time.now + 1.hour && closing_dates.staff_member.suspended = true 
		closing_dates.staff_member.suspended = ! closing_dates.staff_member.suspended 
		closing_dates.destory
		closing_dates.staff_member.save
		end
	end



	
end
