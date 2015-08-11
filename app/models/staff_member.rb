class StaffMember < ActiveRecord::Base
	include EmailHolder
	include PersonalNameHolder


	has_many :events, class_name: 'StaffEvent', dependent: :destroy
	has_many :microposts, dependent: :destroy
	has_one :staff_address, dependent: :destroy
	accepts_nested_attributes_for :staff_address
	has_many :schedules, dependent: :destroy
	has_many :products, dependent: :destroy
	has_many :reverse_relationships, foreign_key: "followed_id",
		class_name: "Relationship",
		dependent: :destroy
	has_many :followers, through: :reverse_relationships, source: :follower
	has_one :additional_info, dependent: :destroy
	has_one :sales_term, dependent: :destroy
	has_many :carts, dependent: :destroy
	has_one :bank, dependent: :destroy

	
	mount_uploader :image, ImageUploader
	mount_uploader :farmimg1, FarmimgUploader
	mount_uploader :farmimg2, FarmimgUploader
	mount_uploader :farmimg3, FarmimgUploader

	

	def password=(raw_password)
		if raw_password.kind_of?(String)
			self.hashed_password = BCrypt::Password.create(raw_password)
		elsif raw_password.nil?
			self.hashed_password = nil
		end
	end

	def active?
		!suspended? && start_date <= Date.today &&
		(end_date.nil? || end_date > Date.today)
	end


  

	def self.feed(current_customer)
		Schedule.from_staff_members_followed_by(current_customer)
	end



end
