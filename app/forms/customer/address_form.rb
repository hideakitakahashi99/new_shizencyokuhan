class Customer::AddressForm
	include ActiveModel::Model

	attr_accessor :customer, :inputs_home_address, :inputs_work_address, :address
	delegate :persisted?, to: :address


	def initialize(address = nil)
		@address = address
		@address ||= Address.new
		
		
		@address.build unless @address
		(1 - @address.phones.size).times do 
			@address.phones.build
		end
	end

	def assign_attributes(params = {})
		@params = params
		self.inputs_home_address = params[:inputs_home_address] == '1'
		self.inputs_work_address = params[:inputs_work_address] == '1'

		address.assign_attributes(address_params)

		phones = phone_params(:address).fetch(:phones)
		address.phones.size.times do |index|
			attributes = phones[index.to_s]
			if attributes && attributes[:number].present?
				address.phones[index].assign_attributes(attributes)
			else
				address.phones[index].mark_for_destruction
			end
		end


	end

	def valid?
		[ address ]
			.map(&:valid?).all?
		end

	def save
		if valid?
		ActiveRecord::Base.transaction do
			address.save!
		end
	end
	end
		


	private
	def address_params
		@params.require(:address).permit(
			:postal_code, :prefecture, :city, :address1, :address2
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