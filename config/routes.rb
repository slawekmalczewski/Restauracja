Rails.application.routes.draw do

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}, controllers: { registrations: "registrations" }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "pages#home"

  resources :blogs
  resources :working_hours
  resources :menus
  resources :dishes
  resources :admins
  resources :photos
  resources :galleries

  get 'admin_index', to: 'galleries#admin_index'

  match ':controller(/:action(/:id))', :via => [:get, :post]
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
