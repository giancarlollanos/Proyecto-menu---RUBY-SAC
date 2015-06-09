Rails.application.routes.draw do

  get 'mymenu/index'

  #get 'home/index'

  root "mymenu#index"
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :profiles

  resources :menus

  resources :weeks

  resources :locals

  resources :dishes
  
  resources :order_details

  resources :order_headers

  resources :dishes_types

  resources :order_statuses
  
  #resources :users, controllers: {show: 'User'}
  
  devise_for :users
  #root "home#index"

  devise_scope :user do
    authenticated :user do
      #root 'menus#index' #as: :authenticated_root
      #root 'mymenu#index'
    end
  
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

end
