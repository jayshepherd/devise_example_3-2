DeviseExample::Application.routes.draw do
  devise_for :users, :admins

  resources :home, :only => :index
  resources :admins, :only => :index

  root :to => 'home#index'

  match '/token' => 'home#token', :as => :token
end
