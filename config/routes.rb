Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :games
  resources :payments

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
