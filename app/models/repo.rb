# frozen_string_literal: true
class Repo < ApplicationRecord
  has_many :bookmarked_repos
  has_many :users, through: :bookmarked_repos

  validates :title, presence: true
  validates :language, presence: true
  validates :score, presence: true
  validates :forks, presence: true
  validates :description, presence: true
end
