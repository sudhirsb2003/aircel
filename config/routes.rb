Airecel::Application.routes.draw do
  resources :serveys
  resources :assignments
  resources :tabs
  resources :customers do
   member do
    get :accept
    post :accpet
    get :reassign
    post :reassign
   end
  end
  resources :users
  resources :sessions , only: [:new,:create,:destroy]
  get "dashboard/index"
  match '/signup',  to: 'users#new',  via: 'get'
  #match '/completed', to: 'appointments#completed', via: 'get'
  match '/login' , to: "sessions#new" , via: "get"
  match '/logout'  ,to: "sessions#destroy" , via: "delete"
  root 'dashboard#index'
end
