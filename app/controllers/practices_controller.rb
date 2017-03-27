

# frozen_string_literal: true

require 'net/http'
class PracticesController < ApplicationController
  # GET /practices
  def index
    uri=URI("https://api.github.com/search/repositories?q=ga")
    render json: Net::HTTP.get(uri)
  end

  # GET /practices/1
  def show
    render json: @practice
  end
end
