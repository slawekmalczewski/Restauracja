class AdminsController < ApplicationController
  def index
    render layout: 'admin'

    @dishes_out_of_date = Dish.dish_price_older_than_two_months.count
  end
end
