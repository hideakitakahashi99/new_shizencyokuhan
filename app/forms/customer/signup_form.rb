class Customer::SignupForm
	include ActiveModel::Model

	attr_accessor :email, :password
	delegate :persisted?, to: :customer

	def initialize(customer = nil)
		@customer = customer
		@customer ||= Customer.new	
		end
		
	end

	def assign_attributes(params = {})
		@params = params
		self.inputs_home_address = params[:inputs_home_address] == '1'
		self.inputs_work_address = params[:inputs_work_address] == '1'

		customer.assign_attributes(customer_params)

		phones = phone_params(:customer).fetch(:phones)
		customer.personal_phones.size.times do |index|
			attributes = phones[index.to_s]
			if attributes && attributes[:number].present?
				customer.personal_phones[index].assign_attributes(attributes)
			else
				customer.personal_phones[index].mark_for_destruction
			end
		end

		if inputs_home_address
			customer.home_address.assign_attributes(home_address_params)

			phones = phone_params(:home_address).fetch(:phones)
			customer.home_address.phones.size.times do |index|
				attributes = phones[index.to_s]
				if attributes && attributes[:number].present?
					customer.home_address.phones[index].assign_attributes(attributes)
				else
					customer.home_address.phones[index].mark_for_destruction
				end
			end
		else
			customer.home_address.mark_for_destruction
		end
		if inputs_work_address
			customer.work_address.assign_attributes(work_address_params)
		else
			customer.work_address.mark_for_destruction
		end
	end

	def valid?
		[ customer, customer.home_address, customer.work_address ]
			.map(&:valid?).all?
		end

	def save
		if valid?
		ActiveRecord::Base.transaction do
			customer.save!
			customer.home_address.save!
			customer.work_address.save!
		end
		end
	end
		



private
	def customer_params
		@params.require(:customer).permit(
			:email, :password
			)
	end

	def home_address_params
		@params.require(:home_address).permit(
			:postal_code, :prefecture, :city, :address1, :address2,
			)
	end

	def work_address_params
		@params.require(:work_address).permit(
			:postal_code, :prefecture, :city, :address1, :address2,
			:company_name, :division_name
			)
	end

	def phone_params(record_name)
		@params.require(record_name).permit(phones: [ :number, :primary ])
	end


end