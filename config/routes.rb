Rails.application.routes.draw do

  root :to => 'pages#home'


  root :to => 'pages#home'

get '/login' => 'session#new'
post '/login' => 'session#create'
delete '/login' => 'session#destroy'

end
