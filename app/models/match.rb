class Match < ApplicationRecord
  belongs_to :team
  has_many :players
  has_many :player_matches
end
