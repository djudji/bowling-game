class CreateFrames < ActiveRecord::Migration
  def change
    create_table :frames do |t|
      t.references :game, index: true, foreign_key: true
      t.int :ball_one
      t.int :ball_two
      t.int :ball_three
      t.int :frame_score

      t.timestamps null: false
    end
  end
end
