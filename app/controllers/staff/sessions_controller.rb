class Staff::SessionsController < Staff::Base
	skip_before_action :authorize

	def new
		if current_staff_member
			redirect_to :staff_root
		else
			@form = Staff::LoginForm.new
			render action: 'new'
		end
	end

	def create
		@form = Staff::LoginForm.new(staff_login_form_params)
		if @form.email.present?
			staff_member = StaffMember.find_by(email_for_index: @form.email.downcase)
		end
		if Staff::Authenticator.new(staff_member).authenticate(@form.password)
			session[:staff_member_id] = staff_member.id
			session[:last_access_time] = Time.current
			staff_member.events.create!(type: 'logged_in')
			flash.notice = 'ログインしました。'
			redirect_to :staff_root
		else
			flash.now.alert = 'メールアドレスまたはパスワードが正しくありません。'
			render action: 'new'
		end
	end

	def destroy
		if current_staff_member
			current_staff_member.events.create!(type: 'logged_out')
		end
		session.delete(:staff_member_id)
		flash.notice = 'ログアウトしました。'
		redirect_to :staff_root
	end
    def staff_login_form_params
        params.require(:staff_login_form).permit(:email, :password)
    end

	
end
