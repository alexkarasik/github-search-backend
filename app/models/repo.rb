# frozen_string_literal: true
class Repo < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :author, presence: true
  validates :forks, presence: true
  validates :stars, presence: true
  validates :language, presence: true
end
