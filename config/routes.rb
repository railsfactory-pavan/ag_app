Rails.application.routes.draw do
  resources :contacts
  resources :vehicles

  devise_for :users

  root 'home#index'
  end
