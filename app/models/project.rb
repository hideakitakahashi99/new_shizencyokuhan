class Project < ActiveRecord::Base
	has_many :tasks
	validates :title, 
	presence: { message: "入力して下さい。" },
	length: { minimum: 3, message: "三文字以上で入力して下さい。" }

	geocoded_by :address
	after_validation :geocode
end
