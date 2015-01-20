class Customer < ActiveRecord::Base
	include EmailHolder


	has_many :addresses
	has_one :home_address, dependent: :destroy
	has_one :work_address, dependent: :destroy
	has_many :phones, dependent: :destroy
	has_many :personal_phones, -> { where(address_id: nil).order(:id) },
		class_name: 'Phone', autosave: true
	has_many :relationships, foreign_key: "follower_id", dependent: :destroy
	has_many :followed_staff_members, through: :relationships, source: :followed
	has_many :tokens
	has_one :cart, dependent: :destroy



	def password=(raw_password)
	if raw_password.kind_of?(String)
		self.hashed_password = BCrypt::Password.create(raw_password)
	elsif raw_password.nil?
		self.hashed_password = nil
		end
	end	

	def following?(other_staff_member)
		relationships.find_by(followed_id: other_staff_member.id)
	end

	def follow!(other_staff_member)
		relationships.create!(followed_id: other_staff_member.id)
	end

	def unfollow!(other_staff_member)
		relationships.find_by(followed_id: other_staff_member.id).destroy
	end

end
