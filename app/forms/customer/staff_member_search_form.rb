class Customer::StaffMemberSearchForm
	include ActiveModel::Model

	attr_accessor :category

	def search
		rel = Product
		if category.present?
			rel = rel.where(category: category)
		end

	end


end