class Store < ActiveRecord::Base

	state_machine :status, initial: :close do 
		state :open
		state :close

	end


state_machine :delete_flag,initial: :off do
	state :on, value: 1
	state :off, value: 0

	event :delete_on do 
		transition off: :on
	end

	event :delete_off do
		transition on: :off
	end
end

end
