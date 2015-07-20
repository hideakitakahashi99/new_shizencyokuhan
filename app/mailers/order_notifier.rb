class OrderNotifier < ActionMailer::Base
  default from: '自然ちょくはん <info@shizencyokuhan.org>'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #
  def received(address, payment, order, staff_member)
    @address = address
    @payment = payment
    @order = order
    @staff_member = staff_member
    @customer_family = @address.customer.family_name
    @customer_given = @address.customer.given_name

    mail(to: @address.customer.email,
         bcc: @staff_member.email,
         subject: '【自然ちょくはん】ご注文が確定いたしました')
  end

  def ordered(address, payment, order, staff_member)
   @address = address
    @payment = payment
    @order = order
    @staff_member = staff_member
    @customer_family = @address.customer.family_name
    @customer_given = @address.customer.given_name

    mail(to: @staff_member.email,
         bcc: 'info@shizencyokuhan.org',
         subject: '【自然ちょくはん】ご注文が確定いたしました')
  end
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.shipped.subject
  #
  def shipped(staff_member, address, order, customer)
    @address = address
    @staff_member = staff_member
    @order = order
    @customer = customer
    
    mail(to: @customer.email,
         bcc: 'info@shizencyokuhan.org', 
         subject: '【自然ちょくはん】商品発送のお知らせ')
  end
end
