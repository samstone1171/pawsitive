Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resource :account, only: [:show]
  resources :pets do
    resources :rentals, only: [:create]
  end
  resources :rentals, only: [:index] do
    member do
      patch :accept
      patch :decline
    end
  end
end
