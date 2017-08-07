class TeamsController < ApplicationController
  def index
  	@teams = Team.all
    @players = Player.all.limit(20)
    @matches = Match.all.limit(40)

  end
  def show
  	@team = Team.find(params[:id])
  end

  def teams_stats
    @teams = Team.all
    @players = Player.all.limit(20)
    respond_to do |format|
      format.js
      format.html
    end
  end

end
