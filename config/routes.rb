Rails.application.routes.draw do
  root :to => 'pages#home'

  get '/games/search' => 'games#search'
  get '/games/stock' => 'games#stock'

  resources :games
  resources :payments, only: [:new, :create]
  resources :users
  resources :orders


  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/login' => 'sessions#destroy'

end
