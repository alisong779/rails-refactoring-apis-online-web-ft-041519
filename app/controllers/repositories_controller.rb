class RepositoriesController < ApplicationController
  def index
      github = GithubService.new
      @repos_array = github.get_repos
    end

    def create
      github = GithubService.new
      binding.pry
      github.create_repo(params[:name])
      redirect_to '/'
    end
end
