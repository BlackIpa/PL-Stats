class HomeController < ApplicationController
  def index
    @teams = Team.all
    @players = Player.all
    @matches = Match.all
    @player_matches = PlayerMatch.all
  end
end
