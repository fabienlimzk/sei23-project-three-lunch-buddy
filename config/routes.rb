Rails.application.routes.draw do
  get 'homepage/index'
  devise_for :users
  devise_scope :user do
    authenticated :user do
      root 'appointments#index', as: :authenticated_root
    end
  
    unauthenticated do
      root 'homepage#index', as: :unauthenticated_root
    end
  end

  put '/appointments/:id/accept', to: 'appointments#accept', as: "accept"

  put '/appointments/:id/downvote', to: 'appointments#downvote', as: "downvote"
  put '/appointments/:id/upvote', to: 'appointments#upvote', as: "upvote"

  resources :appointments
  
  resources :users do
    resources :appointments
  end

  resources :cuisines
  resources :prices
  resources :locations
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end