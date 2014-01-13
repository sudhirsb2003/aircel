Airecel::Application.routes.draw do
  resources :tabs

  resources :customers

  get "dashboard/index"
  resources :users
  resources :sessions , only: [:new,:create,:destroy]
  match '/signup',  to: 'users#new',  via: 'get'
  #match '/completed', to: 'appointments#completed', via: 'get'
  match '/login' , to: "sessions#new" , via: "get"
  match '/logout'  ,to: "sessions#destroy" , via: "delete"
  root 'dashboard#index'
end
