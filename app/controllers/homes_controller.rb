class HomesController < ApplicationController
  def index
    @teams = Team.order("RAND()").limit(3)
    @players = Player.where('total_points > ?', 120).order("RAND()").limit(3)
  end
end
