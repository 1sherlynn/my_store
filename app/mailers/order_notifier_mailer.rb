class OrderNotifierMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier_mailer.received.subject


  default from: 'My Store <store@mail.com>'

  def received(order)
    @order = order 

    mail to: order.email, subject: 'Modern Store Order'
  end


  def shipped(order)
    @order = order 

    mail to: order.email, subject: 'Order Shipped'
  end
end
