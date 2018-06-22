# frozen_string_literal: true

class UserMailerPreview < ActionMailer::Preview
  def order_confirmation
    OrderMailer.order_confirmation(Order.first.line_items)
  end
end
