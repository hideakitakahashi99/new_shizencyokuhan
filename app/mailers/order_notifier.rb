class OrderNotifier < ActionMailer::Base
  default from: 'Sam Ruby <from@example.com>'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #
  def received(address)
    @address = address

    mail to: address.customer.email, subject: 'SOILS Store Order Confirmation'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.shipped.subject
  #
  def shipped(address)
    @address = address
    
    mail to: 'hideakitakahashi99@gmail.com', subject: 'SOILS Store Order Shipped'
  end
end
