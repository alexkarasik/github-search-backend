# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :bookmarked_repos
  has_many :repos, through: :bookmarked_repos
end
