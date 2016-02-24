class Game < ActiveRecord::Base
  has_many :frames
  validates_associated :frames
  validates :current_frame, numericality: { only_integer: true, less_than_or_equal_to: 10}
  
end