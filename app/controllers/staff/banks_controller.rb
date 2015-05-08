class Staff::BanksController < Staff::Base

	def index
		@staff_member = current_staff_member
	end

	def new
		@staff_member = current_staff_member
		@bank = Bank.new
	end

	def show
		@staff_member = current_staff_member
		@bank = Bank.find(params[:id])
	end

	def edit
		@staff_member = current_staff_member
		@bank = @staff_member.bank
	end

	def create
		@staff_member = current_staff_member
		@bank = @staff_member.build_bank(bank_params)

		if @bank.save
			flash.notice = "売上振込先を更新しました。"
			redirect_to :staff_root
		else
			render 'staff_root'
		end
	end

	def update
		@staff_member = current_staff_member
		@bank = @staff_member.build_bank(bank_params)

		if @bank.save
			flash.notice = "売上振込先を更新しました。"
			redirect_to :staff_root
		else
			flash.now.alert = '入力に誤りがります。'
			render action: 'edit'
		end
	end

	private


	def bank_params
		params.require(:bank).permit(
			:bank_name, 
			:branch_name, 
			:account_type, 
			:account_number, 
			:account_holder
		)
	end
end
