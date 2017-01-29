class Bank < ApplicationRecord
	belongs_to :staff_member
	validates :staff_member_id, presence: true

	ACCOUNT_TYPES = %w(普通 当座 貯蓄)
end
