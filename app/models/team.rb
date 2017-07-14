class Team < ApplicationRecord
  has_many :players
  has_many :matches
 #has_many player_matches, through: :matches
end
