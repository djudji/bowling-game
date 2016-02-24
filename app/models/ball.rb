class Ball < ActiveRecord::Base
  belongs_to :frame
  validates :ball_number,
            numericality: { only_integer: true, less_than_or_equal_to: 3}
  validates :pins_knocked,
            numericality: { only_integer: true, less_than_or_equal_to: 10}
end
