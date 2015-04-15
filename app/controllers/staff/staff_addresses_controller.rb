   class Staff::StaffAddressesController < Staff::Base

    def index
		@staff_member = current_staff_member
		
	end

	def show
		@staff_member = current_staff_member
		@staff_address = StaffAddress.find(params[:id])
	end

	def new
		@staff_member = current_staff_member
		@staff_address = StaffAddress.new
	end

	def edit
		@staff_member = current_staff_member
		@staff_address = @staff_member.staff_address
	end

	def create
		@staff_member = current_staff_member
		@staff_address = @staff_member.build_staff_address
		
			if @staff_address.save
				flash.notice = "所在地登録が可能になりました。"
				redirect_to :edit_staff_account
			else
			render 'staff_root'
 	       end
	    
	end

	def update
    	@staff_member = current_staff_member
		@staff_address = @staff_member.build_staff_address(staff_address_params)

    	if @staff_address.save
				flash.notice = "所在地を更新しました。"
				redirect_to :staff_root
			else
				flash.now.alert = '入力に誤りがあります。'
			render action: 'edit'
 	       end
    end



	def destroy
		@staff_member = current_staff_member
		@staff_address = @staff_member.staff_address.destroy!
		flash.notice = '所在地を削除しました。'
		redirect_to :staff_roots
	end

	private


	def staff_address_params
		params.require(:staff_address).permit(:postal_code, :prefecture, :city, :address1, :address2)
	end

end
