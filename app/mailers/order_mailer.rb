class OrderMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.order_confirmation.subject
  #
  def order_confirmation(order)
    @order = order
    mail(to: "manalib2010@gmail.com", subject: "Thank you for your order from JungleRails")
  end
end
