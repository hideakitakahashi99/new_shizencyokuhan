class Staff::AccountsController < Staff::Base
	def show
		@staff_member = current_staff_member
		
	end

	def edit
		@staff_member = current_staff_member
	end

	def schedule
		@staff_member = current_staff_member
	end

	def update
		@staff_member = current_staff_member
		@staff_member.assign_attributes(staff_member_params)
		
			if @staff_member.save
				flash.notice = 'アカウント情報を更新しました。'
				redirect_to :staff_account
			else
				render action: 'edit'
			end
		
	end

	private
	def staff_member_params
		params.require(:staff_member).permit(
			:farm_name, :email, :password, :family_name, :given_name,
			:family_name_kana, :given_name_kana,
			:suspended, :image, :image_cache, :remove_image,
			:staff_address_attributes => [:postal_code, :prefecture, :city, :address1, :address2]
			)
	end
	
end
