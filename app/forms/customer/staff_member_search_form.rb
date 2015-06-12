class Customer::StaffMemberSearchForm
	include ActiveModel::Model

	attr_accessor :category, :prefecture

	def search
		rel = Product
		if category.present?
			rel = rel.where(category: category)
		end

		if prefecture.present?
			rel = rel.joins(:staff_addresses).where('staff_addresses.prefecture' => prefecture)
		end

	end


end