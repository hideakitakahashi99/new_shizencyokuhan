class Admin::FirstSessionsController < Admin::Base
	skip_before_action :authorize

	def new
		@staff_member = StaffMember.new
	end

	def create
		@staff_member = StaffMember.new(staff_member_params)
		if @staff_member.save
			flash.notice = '販売アカウントを新規登録しました。'
			redirect_to :admin_staff_members
		else
			render action: 'new'
		end
	end

    private

	def staff_member_params
		params.require(:staff_member).permit(
			:farm_name, :email, :password, :family_name, :given_name,
			:family_name_kana, :given_name_kana,
			:start_date, :end_date, :suspended, :name, 
			:description, :image
			)
	end
end		