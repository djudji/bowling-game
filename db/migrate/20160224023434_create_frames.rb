class CreateFrames < ActiveRecord::Migration
  def change
    create_table :frames do |t|
      t.references :game, index: true, foreign_key: true
      t.integer :ball_one
      t.integer :ball_two
      t.integer :ball_three
      t.integer :frame_score

      t.timestamps null: false
    end
  end
end
