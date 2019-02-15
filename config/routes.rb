Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :contacts
  resources :vehicles

  devise_for :users
  # , controllers: { registrations: "registrations" }

  root 'home#index'
  end
