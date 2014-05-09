Airecel::Application.routes.draw do
  resources :pincodes

  #get "accounts/index"
  #get "reports/index"
  resources :serveys, :accounts
  resources :reports
  resources :assignments
  resources :tabs do
    get :autocomplete_pincode_pin_number, :on => :collection
  end

  resources :customers do
   collection do
    post :import
   end
   member do
    get :accept
    post :accpet
    get :reassign
    post :reassign
    get :customer_mapdetail
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
