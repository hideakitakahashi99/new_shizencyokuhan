class ReservationBoxMailer < ApplicationMailer
  default from: '"奥丹波里山便" <info@shizencyokuhan.org>'

    def reservation(reservation)
    @name = reservation.name
    @email = reservation.email
    @greeting = "ご予約ありがとうございます！　奥丹波里山便のご予約が完了しました！"
    mail(to: @email, bcc:'info@shizencyokuhan.org', subject: '野菜ボックスご予約完了のお知らせ' )

  end
end
