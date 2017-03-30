# frozen_string_literal: true
class RepoSerializer < ActiveModel::Serializer
  attributes :id, :title, :language, :score, :forks, :description
end
