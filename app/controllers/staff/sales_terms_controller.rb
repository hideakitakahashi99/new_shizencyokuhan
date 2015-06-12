class Staff::SalesTermsController < Staff::Base

	def show
		@staff_member = current_staff_member
	end

	def new
		@staff_member = current_staff_member
		@sales_terms = SalesTerm.new
	end

	def edit
		@staff_member = current_staff_member
		@sales_terms = @staff_member.sales_term
	end

	def create
		@staff_member = current_staff_member
		@sales_terms = @staff_member.build_sales_term(sales_term_params)
		
			if @sales_terms.save
				flash.notice = "販売条件を更新しました。"
				redirect_to :staff_root
			else
				flash.notice = '登録に失敗しました。もう一度やり直してください。'
			redirect_to :staff_root
 	       end
	    
	end

	def update
    	@staff_member = current_staff_member
		@sales_terms = @staff_member.build_sales_term(sales_term_params)

    	if @sales_terms.save
				flash.notice = "追加情報を更新しました。"
				redirect_to :staff_root
			else
				flash.notice = '登録に失敗しました。もう一度やり直してください。'
			redirect_to :staff_root
 	       end
    end

	def destroy
		@staff_member = current_staff_member
		@sales_terms = @staff_member.sales_terms.destroy!
		flash.notice = '販売条件を削除しました。'
		redirect_to :staff_root
	end

	private


	def sales_term_params
		params.require(:sales_term).permit(:delivery_fee, :legal_info, :return_policy)
	end

end
