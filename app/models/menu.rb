class Menu < ApplicationRecord
  has_and_belongs_to_many :dishes

  scope :active_menu, -> { where("start_date < ? AND end_date > ? AND default_menu = ?", DateTime.now, DateTime.now, false) }

# This function checks if there is any menu that has published time active if yes it will return that menu id if not it will return the id of default menu so it will be displyed on the daymeny page
# Lets scan first if there is any Default Menu
  def self.find_menu_for_dayTEST
    z = Menu.where(:name => "Default Menu")
    k = z[0].id
    return k
  end

  def self.find_menu_for_day
    temporary_menu = Menu.where("start_date < ? AND end_date > ? AND default_menu = ?", DateTime.now, DateTime.now, false)
    default_one = Menu.where("default_menu = ?", true)

    if Menu.where("start_date < ? AND end_date > ? AND default_menu = ?", DateTime.now, DateTime.now, false).exists?
      temporary_menu = Menu.where("start_date < ? AND end_date > ? AND default_menu = ?", DateTime.now, DateTime.now, false)[0].id
    else
      default_one = Menu.where("default_menu = ?", true)[0].id
    end


  end



end
