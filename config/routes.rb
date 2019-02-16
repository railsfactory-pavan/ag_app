Rails.application.routes.draw do
  devise_for :users
  root :to => "home#index"
  resources :homes
  # resources :contacts
  # resources :vehicles

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

    namespace :api do
      namespace :v1 do
        resources :contacts
        resources :vehicles
      end
    end
end
