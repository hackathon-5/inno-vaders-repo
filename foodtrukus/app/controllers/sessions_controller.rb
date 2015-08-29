class SessionsController < ApplicationController
  expose(:user) { User.find_by_email(params[:email]) }

  def create
    if user && user.authenticate(params[:password])
      sign_in(user)
      redirect_back_or_to(:food_trucks)
    elsif
      render :new
    else
      new_user = User.new(email: params[:email], password: params[:password], password_confirmation: params[:password])
      if new_user.save
        sign_in(new_user)
        redirect_to food_trucks
      else
        render :new
      end
    end
  end

  def destroy
    sign_out_user
    redirect_to :root
  end
end
