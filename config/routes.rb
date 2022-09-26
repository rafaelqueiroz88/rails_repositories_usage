Rails.application.routes.draw do
  root "products#index"

  resources :notifications
  resources :transactions
  resources :products
  resources :users
end
