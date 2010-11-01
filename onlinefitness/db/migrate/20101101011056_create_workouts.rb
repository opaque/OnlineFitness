class CreateWorkouts < ActiveRecord::Migration
  def self.up
    create_table :workouts do |t|
      t.datetime :date
      t.string :exercise
      t.integer :expectedreps
      t.integer :expectedsets
      t.integer :actualreps
      t.integer :actualsets
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :workouts
  end
end
