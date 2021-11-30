class TeamsController < ApplicationController
  def index
    @teams = Team.all
    render 'index.html.erb'
  end
end
