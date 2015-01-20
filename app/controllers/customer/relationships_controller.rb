class Customer::RelationshipsController < Customer::Base

	def create
		@staff_member = StaffMember.find(params[:relationship][:followed_id])
		current_customer.follow!(@staff_member)
		redirect_to (:back)
	end

	def destroy
		@staff_member = Relationship.find(params[:id]).followed
		current_customer.unfollow!(@staff_member)
		redirect_to (:back)
	end
end
