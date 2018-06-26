class OrderMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.order_confirmation.subject
  #
  def order_confirmation(current_user, order)
    @order = order
    @curUser = current_user
    mail(to: current_user.email, subject: "Order # #{order.id}. Thank you for your order from JungleRails")
  end
end
