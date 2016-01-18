Rails.application.routes.draw do
  resources :amertumes
  
  root to: 'amertumes#index'

  devise_for :users
  resources :users
end
