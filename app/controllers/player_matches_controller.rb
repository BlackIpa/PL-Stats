class PlayerMatchesController < ApplicationController
  before_action :set_player_match, only: [:show, :edit, :update, :destroy]

  # GET /player_matches
  # GET /player_matches.json
  def index
    @player_matches = PlayerMatch.all
  end

  # GET /player_matches/1
  # GET /player_matches/1.json
  def show
    @player_matches = Match.find(params[:id])
  end

  # GET /player_matches/new
  def new
    @player_match = PlayerMatch.new
  end

  # GET /player_matches/1/edit
  def edit
  end

  # POST /player_matches
  # POST /player_matches.json
  def create
    @player_match = PlayerMatch.new(player_match_params)

    respond_to do |format|
      if @player_match.save
        format.html { redirect_to @player_match, notice: 'Player match was successfully created.' }
        format.json { render :show, status: :created, location: @player_match }
      else
        format.html { render :new }
        format.json { render json: @player_match.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /player_matches/1
  # PATCH/PUT /player_matches/1.json
  def update
    respond_to do |format|
      if @player_match.update(player_match_params)
        format.html { redirect_to @player_match, notice: 'Player match was successfully updated.' }
        format.json { render :show, status: :ok, location: @player_match }
      else
        format.html { render :edit }
        format.json { render json: @player_match.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_matches/1
  # DELETE /player_matches/1.json
  def destroy
    @player_match.destroy
    respond_to do |format|
      format.html { redirect_to player_matches_url, notice: 'Player match was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_match
      @player_match = PlayerMatch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_match_params
      params.fetch(:player_match, {})
    end
end
