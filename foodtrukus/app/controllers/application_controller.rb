class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  authem_for :user

  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end

  def deny_user_access
      redirect_to :sign_in
  end
end
