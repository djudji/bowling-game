class CreateFrames < ActiveRecord::Migration
  def change
    create_table :frames do |t|
      t.references :game, index: true, foreign_key: true
      t.integer :frame_number
      t.integer :frame_score

      t.timestamps null: false
    end
  end
end
