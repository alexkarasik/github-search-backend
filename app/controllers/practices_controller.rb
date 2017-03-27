class PracticesController < ApplicationController

  # GET /practices
  def index
    @practices = Practice.all

    render json: @practices
  end

  # GET /practices/1
  def show
    render json: @practice
  end


end
