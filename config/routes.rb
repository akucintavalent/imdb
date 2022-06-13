Rails.application.routes.draw do
  resources :ratings
  resources :categories
  resources :awards
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :companies
  # Defines the root path route ("/")
  root "home#index"
end
