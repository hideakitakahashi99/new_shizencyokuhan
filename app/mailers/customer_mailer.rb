class CustomerMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.customer_mailer.registration_confirmation.subject
  #
  def registration_confirmation(current_customer)
    @customer = current_customer
    @url = 'shizensaibai.com'
    @greeting = "おめでとうございます！　あなたのアカウントが登録されました！　Congrats!! Success registrate your store account!"

    mail to: "hideakitakahashi99@gmail.com"
  end

  def customer_create_mail(@customer)
    @customer = current_customer
    mail(to: @customer.email, subject: '会員仮登録')
  end
end
