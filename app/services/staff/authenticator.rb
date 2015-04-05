class Staff::Authenticator
	def initialize(staff_member)
		@staff_member = staff_member
	end

	def authenticate(raw_password)
		@staff_member &&
		@staff_member.hashed_password &&
		BCrypt::Password.new(@staff_member.hashed_password) == raw_password
	end
end
