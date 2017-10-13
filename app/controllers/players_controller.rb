class PlayersController < ApplicationController

  def index
    @teams = Team.all
    @player_matches = PlayerMatch.all.limit(20)
    @players = Player.all
    if params[:search]
      @players = Player.search(params[:search]).order("second_name DESC")
    else
      @players = Player.all.limit(20)
    end

  end

  def show
    @player = Player.find(params[:id])
  end

  def players_stats
    @teams = Team.all
    @players = Player.all.limit(20)
  end
end
