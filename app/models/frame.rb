class Frame < ActiveRecord::Base
  belongs_to :game
  validates :ball_one, :ball_two, :ball_three, 
            numericality: { only_integer: true, less_than_or_equal_to: 10}
  
end
