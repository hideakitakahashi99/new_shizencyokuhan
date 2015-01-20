class Article < ActiveRecord::Base
	state_machine :status, initial: :close  do
		state :close
		state :open

		after_transition on: :activate, do: :able_order
		after_transition on: :inactivate, do: :enable_order 

		event :activate do
			transition :close => :open
		end 

		event :inactivate do 
			transition :open => :close
		end
	end

			def able_order
			end

			def enable_order
			end

end