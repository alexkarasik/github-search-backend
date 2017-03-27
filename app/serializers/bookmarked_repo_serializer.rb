class BookmarkedRepoSerializer < ActiveModel::Serializer
  attributes :id
  has_one :repo
  has_one :user
end
