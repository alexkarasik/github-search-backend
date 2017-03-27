class RepoSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :stars, :forks, :language
end
