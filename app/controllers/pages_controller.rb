class PagesController < ApplicationController

  access all: [:home, :about, :contact, :catering, :daymenu], admin: :all


  def home
    render layout: 'public_index'

  end

  def about
  end

  def contact
  end

  def daymenu
    @menus = Menu.all
    menuID = Menu.find_menu_for_day
    @selected_menu = Menu.where(:id => menuID).first
  end

  def catering
    @newest_catering_menu = Menu.all.where(:catering_menu => true).order(created_at: :desc)[0]
  end



end
