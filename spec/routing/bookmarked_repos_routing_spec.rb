require "rails_helper"

RSpec.describe BookmarkedReposController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/bookmarked_repos").to route_to("bookmarked_repos#index")
    end

    it "routes to #new" do
      expect(:get => "/bookmarked_repos/new").to route_to("bookmarked_repos#new")
    end

    it "routes to #show" do
      expect(:get => "/bookmarked_repos/1").to route_to("bookmarked_repos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/bookmarked_repos/1/edit").to route_to("bookmarked_repos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/bookmarked_repos").to route_to("bookmarked_repos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/bookmarked_repos/1").to route_to("bookmarked_repos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/bookmarked_repos/1").to route_to("bookmarked_repos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/bookmarked_repos/1").to route_to("bookmarked_repos#destroy", :id => "1")
    end

  end
end
