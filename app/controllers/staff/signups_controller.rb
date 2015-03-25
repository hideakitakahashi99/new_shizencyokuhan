class Staff::SignupsController < Staff::Base
	skip_before_action :authorize


	def new
		if current_staff_member
			redirect_to :staff_root
		else
			@staff_member = StaffMember.new
			render action: 'new'
		end
	end


	def create
		@staff_member = StaffMember.new(staff_member_params)
		if @staff_member.save
			@mail = StaffMemberMailer.registration_confirmation(@staff_member)
			@mail.deliver
			flash.notice = '販売アカウントを新規登録しました。'
			redirect_to :staff_root
		else
			render action: 'new'
		end
	end

	private
	def staff_member_params
		params.require(:staff_member).permit(
			:email, :password
			)
	end
end