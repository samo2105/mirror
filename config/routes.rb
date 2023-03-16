Rails.application.routes.draw do
  resources :variants, only: [:index, :show]
  resources :vehicles, only: [:index, :show]
  resources :vehicle_types, only: [:index, :show]
  resources :brands, only: [:index, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  scope :api, defaults: { format: :json } do
    devise_for :users, controllers: { sessions: :sessions },
                       path_names: { sign_in: :login }
    resource :user, only: [:show, :update]
  end

  root to: "static#index"
end
