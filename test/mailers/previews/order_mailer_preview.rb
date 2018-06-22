# frozen_string_literal: true

class UserMailerPreview < ActionMailer::Preview
  def order_confirmation
    OrderMailer.order_confirmation
  end
end
