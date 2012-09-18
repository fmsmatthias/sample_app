SampleApp::Application.routes.draw do
  resources :seasons
  resources :rates
  resources :users do
    resources :bookings
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :addresses 
  resources :ustatuses


  root :to => 'pages#home'
  
  match '/signup',       to: 'users#new'
  match '/signin',       to: 'sessions#new'
  match '/signout',      to: 'sessions#destroy'

  match '/ap1',          :to => 'pages#ap1' 
  match '/ap2',          :to => 'pages#ap2'
  match '/contact',      :to => 'pages#contact'
 

#'sessions#destroy' , via: :delete
  
end
