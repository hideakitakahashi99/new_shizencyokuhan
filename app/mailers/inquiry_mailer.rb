class InquiryMailer < ActionMailer::Base
  default to: "info@shizencyokuhan.org" 
  default from: "info@shizencyokuhan.org"

  def received_email(inquiry)
    @inquiry = inquiry
    mail(:subject => 'お問い合わせがありました。')
  end

end