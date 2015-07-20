class CustomerMailer < ActionMailer::Base
  default from: 'info@shizencyokuhan.org'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.customer_mailer.registration_confirmation.subject
  #
  def registration_confirmation(customer)
    @customer = customer
    @url = 'www.shizencyokuhan.com'
    @greeting = "おめでとうございます！　あなたのアカウントが登録されました！"
    mail(to: @customer.email, bcc:'info@shizencyokuhan.org', subject: 'アカウント登録完了のお知らせ' )
    
  end


  def customer_create_mail(customer)
    @customer = customer
    mail to: @customer.email, subject: '会員仮登録'
  end
  
end
