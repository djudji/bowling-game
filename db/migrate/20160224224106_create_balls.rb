class CreateBalls < ActiveRecord::Migration
  def change
    create_table :balls do |t|
      t.integer :ball_number
      t.integer :pins_knocked
      t.references :frame, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
