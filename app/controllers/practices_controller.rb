
# frozen_string_literal: true
require 'open-uri'
require 'json'
require 'net/http'

class PracticesController < OpenReadController
  before_action :set_example, only: [:update, :destroy]
  # GET /practices

  def search_github
    query = params[:search][:query]
    url = "https://api.github.com/search/repositories?q=#{query}"
    response = open(url)
    data_string = response.read
    json_string = JSON.parse(data_string)
    render json: json_string
  end
end
