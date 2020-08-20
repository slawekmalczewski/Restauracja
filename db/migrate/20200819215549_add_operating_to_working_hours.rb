class AddOperatingToWorkingHours < ActiveRecord::Migration[5.2]
  def change
    add_column :working_hours, :operating, :boolean
  end
end
