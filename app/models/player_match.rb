class PlayerMatch < ApplicationRecord
  belongs_to :matches
  belongs_to :players
end
