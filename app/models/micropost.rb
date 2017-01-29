class Micropost < ApplicationRecord
	belongs_to :staff_member
	default_scope -> { order('created_at DESC')}
	validates :staff_member_id, presence: true
	
end
