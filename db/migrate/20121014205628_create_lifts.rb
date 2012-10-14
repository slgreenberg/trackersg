class CreateLifts < ActiveRecord::Migration
  def change
    create_table :lifts do |t|
      t.string :name
      t.integer :duration
      t.text :exercise
      t.integer :total_reps
      t.integer :sets

      t.timestamps
    end
  end
end
