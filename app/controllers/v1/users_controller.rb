class V1::UsersController < ApplicationController
  def index
    @name = User.all
    render json: @name
  end

  def create
    @user = User.create(user_params)
  end

  private

  def user_params
    params.permit(:name, :email, :password, :password_confirmation, :user_image)
  end
end
