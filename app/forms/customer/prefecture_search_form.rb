class Customer::PrefectureSearchForm
	include ActiveModel::Model

	attr_accessor :prefecture

	def search
		rel = StaffAddress
		if prefecture.present?
			rel = rel.where(prefecture: prefecture)
		end

	end

end