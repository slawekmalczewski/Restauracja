Rails.application.routes.draw do
  resources :blogs
  resources :working_hours
  root "pages#home"
  get 'home', to: "pages#home"
  get 'about', to: "pages#about"
  get 'contact', to: "pages#contact"
  get 'daymenu', to: "pages#daymenu"
  get 'catering', to: "pages#catering"

  resources :menus
  resources :dishes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
