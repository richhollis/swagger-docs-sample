class GroupsController < ApplicationController

  swagger_controller :groups, "Groups"

  swagger_api :index do
    summary "Fetches all group memberships"
    param :path, :id, :integer, :required, "Group ID"
    response :unauthorized
    response :not_acceptable
  end

  def index
    render :json => {result:"Success"}, :status => 200
  end

end