Rails.application.routes.draw do
  resources :dogdates
  resources :ratings
  resources :dogs
  resources :accounts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
