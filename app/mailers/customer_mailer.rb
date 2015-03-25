class CustomerMailer < ActionMailer::Base
  default from: 'central@shizencyokuhan.com'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.customer_mailer.registration_confirmation.subject
  #
  def registration_confirmation(customer)
    @customer = customer
    @url = 'shizencyokuhan.com'
    @greeting = "おめでとうございます！　あなたのアカウントが登録されました！"
    mail(to: @customer.email, bcc:'hideakitakahashi99@gmail.com', subject: 'アカウント登録完了のお知らせ' )
    
  end


  def customer_create_mail(customer)
    @customer = customer
    mail to: @customer.email, subject: '会員仮登録'
  end
  
end
