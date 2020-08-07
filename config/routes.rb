Rails.application.routes.draw do
  devise_for :users

  resources :appointments
  
  resources :users do
    resources :appointments
  end

root 'appointments#index'
end
