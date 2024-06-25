Rails.application.routes.draw do

  root 'tasks#index'

  get 'menu' => 'access#menu'
  get 'login' => 'access#new'
  delete 'logout' => 'access#destroy'
  resource :access, controller: 'access', only: [:new, :create, :destroy] do
    member do
      get :menu
    end
  end

  match 'about', to: 'main#about', via: :get

  resources :categories do
    member do
      get :delete
    end
  end

  resources :tasks do
    member do
      get :delete
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
