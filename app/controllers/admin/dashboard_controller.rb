# Admin dashboard
class Admin::DashboardController < ApplicationController
  ad_name = ENV['admin_username']
  ad_password = ENV['admin_password']
  http_basic_authenticate_with name: ad_name, password: ad_password
  
  def show; end
end
