Rails.application.routes.draw do
  devise_for :users
  root to: 'static_pages#home'
  #get 'gossips/index', to: 'gossips#index', as: 'gossips'
  #get 'gossips/new', to: 'gossips#new', as: 'new_gossip'
#  post 'gossips/new', to: 'gossips#create', as: 'gossip_create'
 # post 'gossips/index', to: 'gossips#create'
  resources :gossips
end 

