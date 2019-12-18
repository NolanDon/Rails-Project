# app/controllers/dashboard_controller.rb
class Admin::DashboardController < ApplicationController
  
  before_filter :authenticate

  def show
  end
end
