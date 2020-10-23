class ApplicationController < ActionController::Base
  helper_method :is_admin?
  protect_from_forgery with: :exception
  before_action :authenticate_user!
end