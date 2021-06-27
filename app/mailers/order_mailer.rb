class OrderMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.received.subject
  #
  def received
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.shipped.subject
  #
  def shipped
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  def received(order)
    @order = order
    mail to: order.email, subject: 'Tokopaedi Order Confirmation'
  end

  def shipped(order)
    @order = order
    mail to: order.email, subject: 'Tokopaedi Order Shipped'
  end
end
