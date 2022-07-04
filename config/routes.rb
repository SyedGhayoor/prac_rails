Rails.application.routes.draw do
  devise_for :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :authors

  # Defines the root path route ("/")
  root "authors#index"
end
