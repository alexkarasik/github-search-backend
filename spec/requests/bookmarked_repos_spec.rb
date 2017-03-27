require 'rails_helper'

RSpec.describe "BookmarkedRepos", type: :request do
  describe "GET /bookmarked_repos" do
    it "works! (now write some real specs)" do
      get bookmarked_repos_path
      expect(response).to have_http_status(200)
    end
  end
end
