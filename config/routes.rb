SampleApp::Application.routes.draw do
  resources :statusvalues

  resources :seasons
  resources :rates
  resources :users do
    resources :bookings
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :addresses 
  resources :ustatuses
  resources :statusvalues


  root :to => 'pages#home'
  
  match '/signup',       to: 'users#new'
  match '/signin',       to: 'sessions#new'
  match '/signout',      to: 'sessions#destroy'

  match '/ap1',          :to => 'pages#ap1' 
  match '/ap2',          :to => 'pages#ap2'
  match '/contact',      :to => 'pages#contact'
  match '/langude',      :to => 'pages#langude'
  match '/languen',      :to => 'pages#languen'
  match '/langufr',      :to => 'pages#langufr'
 

#'sessions#destroy' , via: :delete
  
end
