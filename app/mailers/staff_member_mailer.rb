class StaffMemberMailer < ActionMailer::Base
  default from: "central@shizencyokuhan.com"

    def registration_confirmation(current_staff_member)
    @staff_member = current_staff_member
    @url = 'shizencyokuhan.com'
    @greeting = "おめでとうございます！　あなたのアカウントが登録されました！"
    mail to: @staff_member.email, subject: '店舗登録完了のお知らせ'
  end

end
