Rails.application.routes.draw do

  root 'movies#index'

  get '/sessions/new' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/account' => 'users#show'

  resources :movies
  resources :directors
  resources :actors
  resources :users


end
