class AdminsController < ApplicationController
  access admin: :all
  def index
    render layout: 'admin'
  end


end
