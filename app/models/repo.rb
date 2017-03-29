# frozen_string_literal: true
class Repo < ApplicationRecord
  has_many :bookmarked_repos

  validates :title, presence: true
  validates :author, presence: true
  validates :forks, presence: true
  validates :stars, presence: true
  validates :language, presence: true
end
