class Player < ApplicationRecord
  Player.order('total_points DESC')
  belongs_to :team
  has_many :matches
  has_many :player_matches
end
