class Staff::AdditionalInfosController < Staff::Base


	def index
		@staff_member = current_staff_member
		
	end

	def show
		@staff_member = current_staff_member
		@additional_infos = AdditionalInfo.find(params[:id])
	end

	def new
		@staff_member = current_staff_member
		@additional_infos = AdditionalInfo.new
	end

	def edit
		@staff_member = current_staff_member
		@additional_infos = @staff_member.additional_info
	end

	def create
		@staff_member = current_staff_member
		@additional_infos = @staff_member.build_additional_info(additional_info_params)
		
			if @additional_infos.save
				flash.notice = "販売条件を更新しました。"
				redirect_to :staff_root
			else
			render 'staff_root'
 	       end
	    
	end

	def update
    	@staff_member = current_staff_member
		@additional_infos = @staff_member.build_additional_info(additional_info_params)

    	if @additional_infos.save
				flash.notice = "追加情報を更新しました。"
				redirect_to :staff_root
			else
				flash.now.alert = '入力に誤りがあります。'
			render action: 'edit'
 	       end
    end



	def destroy
		@staff_member = current_staff_member
		@additional_infos = @staff_member.additional_infos.destroy!
		flash.notice = '販売条件を削除しました。'
		redirect_to :staff_roots
	end

	private


	def additional_info_params
		params.require(:additional_info).permit(:farm_condition, :farm_condition_year, :masterpiece)
	end

end
