class Game < ActiveRecord::Base
  has_many :frames
  has_many :balls, through: :frames
  validates_associated :frames
  validates :game_score, numericality: { only_integer: true, less_than_or_equal_to: 300}
end