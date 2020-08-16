Rails.application.routes.draw do
  root "pages#home"
  get 'home', to: "pages#home"
  get 'about', to: "pages#about"
  get 'contact', to: "pages#contact"
  get 'daymenu', to: "pages#daymenu"
  resources :menus
  resources :dishes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
