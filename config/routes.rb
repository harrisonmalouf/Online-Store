Rails.application.routes.draw do
  get 'games/new'
  get 'games/edit'
  get 'games/show'
  root :to => 'pages#home'



end
