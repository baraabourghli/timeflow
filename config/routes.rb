Timeflow::Application.routes.draw do
  
  #:path_names => { :sign_up => 'register', :sign_in => 'login' }
  devise_for :users, :path => '', :skip => [:passwords]

  resources :activities, only: [:index, :show]

  resources :projects, only: [:index, :show, :create, :update, :destroy]

  resources :users, only: [:show]

  resources :issues, only: [:show, :create, :update, :destroy]

  resources :comments, only: [:create, :destroy]

  root :to => "home#index"

end
