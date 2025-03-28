Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  patch "journals/:id", to: "journals#update"
  # Defines the root path route ("/")
  # root "posts#index"
  resources :trips, except: [:destroy] do
    resources :destinations
    resources :journals, only: [:index]
    resources :packages, only: [] do
    member do
        post :set_package
      end
    end
    # resources :itineraries, only: [:show, :new, :update]
    # resources :destination
  end
  resources :journals, only: [:show, :update]
end
