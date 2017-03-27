# frozen_string_literal: true
class BookmarkedRepo < ApplicationRecord
  belongs_to :repo
  belongs_to :user
end
