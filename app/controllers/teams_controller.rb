class TeamsController < ApplicationController
  def index
  	@teams = Team.all
    @players = Player.all.limit(20)
    @matches = Match.all.limit(40)
  end
  def show
  	@team = Team.find(params[:id])
  end
  def team_overwiev

  end
  def team_offensive
    respond_to do |format|
      format.js
    end
  end
end
