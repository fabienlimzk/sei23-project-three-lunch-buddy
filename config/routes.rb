Rails.application.routes.draw do

  get 'users/index'
  get 'users/show'
  get 'users/destroy'
  get 'users/update'
  get 'users/edit'
  devise_for :users

  get 'appointments/index'
  get 'appointments/show'
  get 'appointments/new'
  get 'appointments/create'
  get 'appointments/edit'
  get 'appointments/update'
  get 'appointments/destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
