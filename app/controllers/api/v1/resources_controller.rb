class Api::V1::ResourcesController < ApplicationController

  def all
    @colors = Color.available
    resources = Resources.new(colors: @colors)
    render json: resources
  end

end