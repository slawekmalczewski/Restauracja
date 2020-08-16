class AddDefaultMenuToMenus < ActiveRecord::Migration[5.2]
  def change
    add_column :menus, :default_menu, :boolean
  end
end
