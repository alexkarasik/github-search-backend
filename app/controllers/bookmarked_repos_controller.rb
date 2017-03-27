# frozen_string_literal: true
class BookmarkedReposController < ApplicationController
  before_action :set_bookmarked_repo, only: [:show, :update, :destroy]

  # GET /bookmarked_repos
  def index
    @bookmarked_repos = BookmarkedRepo.all

    render json: @bookmarked_repos
  end

  # GET /bookmarked_repos/1
  def show
    render json: @bookmarked_repo
  end

  # POST /bookmarked_repos
  def create
    @bookmarked_repo = BookmarkedRepo.new(bookmarked_repo_params)

    if @bookmarked_repo.save
      render json: @bookmarked_repo, status: :created, location: @bookmarked_repo
    else
      render json: @bookmarked_repo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bookmarked_repos/1
  def update
    if @bookmarked_repo.update(bookmarked_repo_params)
      render json: @bookmarked_repo
    else
      render json: @bookmarked_repo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bookmarked_repos/1
  def destroy
    @bookmarked_repo.destroy
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_bookmarked_repo
    @bookmarked_repo = BookmarkedRepo.find(params[:id])
  end
  private :set_bookmarked_repo

  # Only allow a trusted parameter "white list" through.
  def bookmarked_repo_params
    params.require(:bookmarked_repo).permit(:repo_id, :user_id)
  end

  private :bookmarked_repo_params
end
