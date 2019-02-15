Rails.application.routes.draw do
  resources :vehicles
  devise_for :users

  root 'home#index'
  end
