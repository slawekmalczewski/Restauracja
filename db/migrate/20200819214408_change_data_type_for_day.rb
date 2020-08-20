class ChangeDataTypeForDay < ActiveRecord::Migration[5.2]
  def up
    change_column :working_hours, :day, :string
  end
  def down
    change_column :working_hours, :day, :integer
  end
end
