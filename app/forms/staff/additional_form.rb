class Staff::AdditionalForm
	include ActiveModel::Model

	attr_accessor :staff_member
	delegate :persisted?, to: :staff_member

	def initialize(staff_member = nil)
		@staff_member = staff_member
		@staff_member ||= StaffMember.new
		@staff_member.build_additional_info unless @staff_member.additional_info
		@staff_member.build_sales_term unless @staff_member.sales_term
	end

	def assign_attributes(params = {})
		@params = params

		staff_member.additional_info.assign_attributes(additional_info_params)
		staff_member.sales_term.assign_attributes(sales_term_params)
	end

	def save
		ActiveRecord::Base.transaction do
			staff_member.additional_info.save!
			staff_member.sales_term.save!
		end			
	end


	private
    def additional_info_params
		params.require(:additional_info).permit(:farm_condition, :farm_condition_year, :masterpiece)
	end

	def sales_term_params
		params.require(:sales_term).permit(:delivery_fee, :legal_info, :return_policy)
	end

end

