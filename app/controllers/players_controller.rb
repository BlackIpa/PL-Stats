class PlayersController < ApplicationController

  def index
    @teams = Team.all
  	@players = Player.all.limit(20)
    @player_matches = PlayerMatch.all.limit(20)
  end

  def show
    @player = Player.find(params[:id])
  end

  def players_stats
    @teams = Team.all
    @players = Player.all.limit(20)
    respond_to do |format|
      format.js
      format.html
    end
  end
end
