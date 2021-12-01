class TeamsController < ApplicationController
  def index
    @teams = Team.all
    render 'index.html.erb'
  end

  def show

    @team = Team.find_by(id: params[:id])
    render 'show.html.erb'
    
  end

  def create
    @team = Team.new(
      name: params[:name],
      stadium: params[:stadium],
      value: params[:value]
    )
    @team.save
    # render 'create.html.erb'

    redirect_to "/teams/#{@team.id}"
  end

  def new
    render 'new.html.erb'
  end
end
