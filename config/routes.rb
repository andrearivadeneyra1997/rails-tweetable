Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "tweets#index"
  # Defines the root path route ("/")
  # root "articles#index"

  get '/tweets', to: 'tweets#index'
  get '/tweets/:id', to: 'tweets#show'

  get '/profile', to: 'users#show'
end
