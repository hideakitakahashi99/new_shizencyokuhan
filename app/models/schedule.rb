class Schedule < ActiveRecord::Base
	belongs_to :staff_member
	default_scope -> { order('created_at DESC')}
	validates :staff_member_id, presence: true
	self.inheritance_column = nil


	alias_attribute :occurred_at, :created_at

	CATEGORY_NAMES = %w(
		収穫開始予定 開店予定
		)


	def self.from_customers_followed_by(customer)
		followed_staff_member_ids = customer.followed_staff_members_ids
		where("staff_member_id IN (?) OR staff_member_id = ?", followed_staff_member_ids, staff_member)
	end

end
