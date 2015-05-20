class StaffMemberMailer < ActionMailer::Base
  default from: "central@shizencyokuhan.com"

    def registration_confirmation(current_staff_member)
    @staff_member = current_staff_member
    @url = 'shizencyokuhan.com'
    @greeting = "おめでとうございます！　あなたのアカウントが登録されました！"
    mail to: @staff_member.email, subject: '店舗登録完了のお知らせ'
  end

  def push_info(staff_member, schedule, customers)
  	@staff_member = staff_member
    @schedule = schedule
    @customers = customers
    emails = @customers.collect(&:email).join(",")
  	mail to: emails, subject: 'ごひいき自然農家からお知らせがあります。'
  end

end
