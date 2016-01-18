Rails.application.routes.draw do
  resources :amertumes
  
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
