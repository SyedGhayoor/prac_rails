Rails.application.routes.draw do
  devise_for :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :engines, only: [:index, :new, :create, :show]
  

  resource :vehicle do
    resource :cars, type: 'Car'
    resource :bikes, type: 'Bike'
    resource :trucks, type: 'Truck'
  end

  resources :authors

  resources :novals


  # Defines the root path route ("/")
  root "authors#index"
end
