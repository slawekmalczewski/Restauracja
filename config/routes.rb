Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

resources :blogs
resources :working_hours
root "pages#home"
get 'home', to: "pages#home"
get 'about', to: "pages#about"
get 'contact', to: "pages#contact"
get 'daymenu', to: "pages#daymenu"
get 'catering', to: "pages#catering"

get 'price_out_of_date', to: "dishes#price_out_of_date"

resources :menus
resources :dishes
resources :admins
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
