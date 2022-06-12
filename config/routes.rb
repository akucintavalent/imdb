Rails.application.routes.draw do
  get 'companies/index'
  get 'companies/show'
  get 'companies/new'
  get 'companies/edit'
  get 'companies/create'
  get 'companies/update'
  get 'companies/destroy'
  get 'user/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
