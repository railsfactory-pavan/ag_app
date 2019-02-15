Rails.application.routes.draw do
  resources :contacts
  resources :vehicles

  devise_for :users
  # , controllers: { registrations: "registrations" }

  root 'home#index'
  end
