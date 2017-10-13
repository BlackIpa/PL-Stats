class Player < ApplicationRecord
  Player.order('total_points DESC')
  belongs_to :team
  has_many :matches
  has_many :player_matches

  def self.search(search)
    where("first_name LIKE ?", "%#{search}%")
    where("second_name LIKE ?", "%#{search}%")
  end
end
