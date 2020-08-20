class CreateWorkingHours < ActiveRecord::Migration[5.2]
  def change
    create_table :working_hours do |t|
      t.integer :day
      t.time :open_time
      t.time :close_time

      t.timestamps
    end
  end
end
