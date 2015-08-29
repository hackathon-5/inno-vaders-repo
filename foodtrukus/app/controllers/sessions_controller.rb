class SessionsController < ApplicationController
  expose(:user) { User.find_by_email(params[:email]) }

  def create
    if user && user.authenticate(params[:password])
      sign_in(user)
      redirect_back_or_to(:users)
    else
      render :new
    end
  end

  def destroy
    sign_out_user
    redirect_to :root
  end
end
