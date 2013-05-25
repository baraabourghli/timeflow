Timeflow::Application.routes.draw do
  
  devise_for :users, 
    :controllers => {:sessions => "sessions", :registrations => "registrations"},
    :path => 'users',
    :only => [:sessions, :registrations, :passwords],
    :path_names => { :sign_in => 'login', :sign_up => 'register', :sign_out => 'logout'}
  
  resources :activities, only: [:index, :show]

  resources :projects, only: [:index, :show, :create, :update, :destroy] do
    resources :issues, only: [:show, :create, :update, :destroy]
  end

  resources :users, only: [:show]


  resources :comments, only: [:create, :destroy]

  root :to => "home#index"

end
