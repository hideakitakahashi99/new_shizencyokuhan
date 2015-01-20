class Customer::SignupsController < Customer::Base

skip_before_action :authorize


def new
	@customer = Customer.new
end

def create
	tmp_customer = Customer.find_by_email(customer_params[:email])

		if tmp_customer 
			flash.notice = "入力されたメールアドレスは登録済みです。"
			redirect_to :customer_root

		elsif tmp_customer then
			@customer = tmp_customer
			Token.all.each do |token|
				token.update_attributes!(expire_at: Time.now)
			end
			
			@token = SecureRandom.uuid
			@customer.tokens.create!(uuid: @token, expire_at: 24.hours.since)
			CustomerMailer.customer_create_mail(@customer,@token).deliver
			render action: 'tmp'

		else
			@customer = Customer.new(customer_params)

			if @customer.save
				@token = SecureRandom.uuid
				@customer.tokens.create!(uuid: @token, expire_at: 24.hours.since)
				CustomerMailer.customer_create_mail(@customer,@token).deliver
				render action: 'tmp'
			else
				render action: 'new'
			end
		end
	end

	def token
		token = Token.find_by_uuid!(params[:uuid])
		if token && token.expire_at > Time.now
			token.update_attributes!(expire_at: Time.now)
			@customer = token.customer
			@customer.update_attributes!(created: true)
			flash.notice = "本登録が完了しました。"
			@mail = CustomerMailer.customer_complete_mail(@customer).deliver
			redirect_to :customer_root
		else
			if token && token.customer.created
				redirect_to :customer_root, alert: "入力されたメールアドレスは本登録が完了しています。"
			else
				redirect_to :action => 'new', alert: "仮登録の有効期限が切れているか、URLが適切ではありません。"
			end
		end
	end




	private

	def customer_params
		params.require(:customer).permit(
			:email, :password, :family_name, :given_name,
			:family_name_kana, :given_name_kana
			)
	end

end