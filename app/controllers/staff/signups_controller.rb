class Staff::SignupsController < Staff::Base
	skip_before_action :authorize


	def new
		if current_staff_member
			redirect_to :staff_root
		else
			@staff_member = StaffMember.new
		end
	end


	def create
		@staff_member = StaffMember.create(staff_member_params)
		if @staff_member.save
			@mail = StaffMemberMailer.registration_confirmation(@staff_member)
			@mail.deliver
			flash.notice = '販売アカウントを新規登録しました。'
			redirect_to :staff_root
		else
			render 'new'
		end
	end

	private
	def staff_member_params
		params.require(:staff_member).permit(
			:farm_name, :email, :password, :family_name, :given_name, :family_name_kana, :given_name_kana
			)
	end
end