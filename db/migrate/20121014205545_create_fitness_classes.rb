class CreateFitnessClasses < ActiveRecord::Migration
  def change
    create_table :fitness_classes do |t|
      t.string :name
      t.integer :duration
      t.boolean :equipment_user

      t.timestamps
    end
  end
end
