class TeamsController < ApplicationController

  def index
  	@teams = Team.all
    @players = Player.all.limit(20)
    @matches = Match.where('was_home = ?', 'True').all.limit(20)
  end

  def show
  	@team = Team.find(params[:id])
  end

  def teams_stats
    @teams = Team.all
    @players = Player.all.limit(20)
  end

end
