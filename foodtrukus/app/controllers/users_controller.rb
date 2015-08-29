class UsersController < ApplicationController
  expose(:users) {User.all}
  expose(:user, attributes: :user_params)
  before_filter :require_user

  def create
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end
end
