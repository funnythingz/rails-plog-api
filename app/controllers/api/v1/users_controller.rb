class Api::V1::UsersController < ApplicationController

  include ErrorHandler

  def me
    return render json: not_found unless params[:access_token].present?
    render json: User.me(params[:access_token])
  end

  def new
    @user = User.new
    if @user.create_access_token
      render json: @user
    else
      render json: server_error
    end
  end
end
