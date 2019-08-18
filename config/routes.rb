Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :games
  resources :payments
  resources :users

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/login' => 'sessions#destroy'

end
