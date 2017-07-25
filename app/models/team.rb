class Team < ApplicationRecord
  Team.order('points DESC')
  has_many :players
  has_many :matches
 #has_many player_matches, through: :matches
end
