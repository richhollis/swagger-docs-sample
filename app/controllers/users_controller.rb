class UsersController < ApplicationController

  swagger_controller :users, "Users"

  swagger_api :index do
    summary "Fetches all users"
    response :unauthorized
    response :not_acceptable
  end

  def index
    render :json => {result:"Success"}, :status => 200
  end

end