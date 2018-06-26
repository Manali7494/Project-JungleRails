class OrderMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.order_confirmation.subject
  #
  def order_confirmation(current_user, order)
    @order = order
    mail(to: current_user.email, subject: "Order # #{order.id}. Thank you #{current_user.name} for your order from JungleRails")
  end
end
