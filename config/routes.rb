Rails.application.routes.draw do
  get 'homepage/index'
  devise_for :users

  put '/appointments/:id/accept', to: 'appointments#accept', as: "accept"

  resources :appointments
  
  resources :users do
    resources :appointments
  end

  resources :cuisines
  resources :prices
  resources :locations
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root 'homepage#index'

end