class Schedule < ActiveRecord::Base
	belongs_to :staff_member
	default_scope -> { order('created_at DESC')}
	validates :staff_member_id, presence: true
	self.inheritance_column = nil


	alias_attribute :occurred_at, :created_at

	CATEGORY_NAMES = %w(
		収穫開始予定 開店予定
		)

	def self.from_staff_members_followed_by(current_customer)
		followed_staff_member_ids = current_customer.followed_staff_member_ids
		where("staff_member_id IN (?)", followed_staff_member_ids)
	end

end
