class Player < ApplicationRecord
  belongs_to :team
  has_many :matches
  has_many :player_matches
end
