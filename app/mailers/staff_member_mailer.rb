class StaffMemberMailer < ActionMailer::Base
  default from: '"自然ちょくはん"<info@shizencyokuhan.org>'

    def registration_confirmation(current_staff_member)
    @staff_member = current_staff_member
    @url = 'www.shizencyokuhan.com'
    @greeting = "おめでとうございます！　あなたのアカウントが登録されました！"
    mail to: @staff_member.email, subject: '店舗登録完了のお知らせ'
  end

  def push_info_ha(schedule, staff_member, customers)
  	@staff_member = staff_member
    @schedule = schedule
    @customers = customers
    emails = @customers.collect(&:email).join(",")
  	mail to: emails, subject: 'ごひいき自然農家からお知らせがあります。'
  end

  def push_info_op(schedule, staff_member, customers)
    @staff_member = staff_member
    @schedule = schedule
    @customers = customers
    emails = @customers.collect(&:email).join(",")
    mail to: emails, subject: 'ごひいき自然農家からお知らせがあります。'
  end

end
