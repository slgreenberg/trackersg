class WorkoutsBelongToUser < ActiveRecord::Migration
  def change
    change_table :workouts do |t|
      t.belongs_to :user
    end
  end
end
