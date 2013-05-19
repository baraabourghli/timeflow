Timeflow::Application.routes.draw do
  
  devise_for :admins
  
  devise_for :users

  resources :activities, only: [:index, :show]

  resources :projects, only: [:index, :show, :create, :update, :destroy]

  resources :users, only: [:show]

  resources :issues, only: [:show, :create, :update, :destroy]

  resources :comments, only: [:create, :destroy]

  root :to => "home#index"

end
