# App controller
class ApplicationController < ActionController::Base
  include Authentication
  include SetCurrentRequestDetails

  helper_method :current_user
  # helper_method :current_account

  def current_user
    Current.user
  end
end
