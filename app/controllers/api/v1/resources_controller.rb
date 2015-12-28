class Api::V1::ResourcesController < ApplicationController

  def all
    @colors = Color.all
    resources = Resources.new(colors: @colors)
    render json: resources
  end

end
