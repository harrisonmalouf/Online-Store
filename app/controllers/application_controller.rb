class ApplicationController < ActionController::Base
  before_action :fetch_user
  skip_before_action :verify_authenticity_token

  private
  def fetch_user <#% this allows us to fetch a username if in session %>
    @current_user = User.find_by :id => session[:user_id] if session[:user_id].present?
    session[:user_id] = nil unless @current_user.present?
  end

  def check_for_login <#% This does exactly as it says %>
    redirect_to login_path unless @current_user.present?
  end

  def check_for_admin <#% This does exactly as it says %>
    redirect_to root_path unless @current_user.present? && @current_user.admin?
  end

end
