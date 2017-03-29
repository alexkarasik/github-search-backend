# frozen_string_literal: true
class Repo < ApplicationRecord
  has_many :bookmarked_repos

  validates :author, presence: true
  validates :link, presence: true
  validates :language, presence: true

end
