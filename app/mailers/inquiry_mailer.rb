class InquiryMailer < ActionMailer::Base
  default to: "hideakitakahashi99@gmail.com" 
  default from: "shizencyokuhan.test@gmail.com"

  def received_email(inquiry)
    @inquiry = inquiry
    mail(:subject => 'お問い合わせがありました。')
  end

end