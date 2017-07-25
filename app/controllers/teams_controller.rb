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
    respond_to do |format|
      format.js
    end
  end
  def team_offensive
    @teams = Team.all
    respond_to :js
    #respond_to do |format|
    #  format.js
    #end
  end
  def team_defensive
    respond_to do |format|
      format.js
    end
  end
  def team_booking
    respond_to do |format|
      format.js
    end
  end
  def team_form
    respond_to do |format|
      format.js
    end
  end
end
