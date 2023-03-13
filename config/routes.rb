Rails.application.routes.draw do
  resources :variants, only: [:index, :show]
  resources :vehicles, only: [:index, :show]
  resources :vehicle_types, only: [:index, :show]
  resources :brands, only: [:index, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
