class Frame < ActiveRecord::Base
  belongs_to :game
  has_many :balls
  validates_associated :balls
  validates :frame_number,
            numericality: { only_integer: true, less_than_or_equal_to: 10}
end