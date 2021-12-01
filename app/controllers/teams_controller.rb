class TeamsController < ApplicationController
  def index
    @teams = Team.all
    render 'index.html.erb'
  end
  
  def show

    @team = Team.find_by(id: params[:id])
    render 'show.html.erb'
    
  end
end
