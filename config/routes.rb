Rails.application.routes.draw do
  get 'payments/new'
  get 'payments/edit'
  get 'payments/show'
  get 'games/new'
  get 'games/edit'
  get 'games/show'
  root :to => 'pages#home'



end
