Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :games
  resources :payments, only: [:new, :create]
  resources :users
  resources :orders

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/login' => 'sessions#destroy'

end
