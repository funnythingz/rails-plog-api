class Api::V1::UsersController < ApplicationController

  include ErrorHandler

  def me
    return render json: not_found unless params[:access_token].present?
    render json: User.me(params[:access_token])
  end
end
