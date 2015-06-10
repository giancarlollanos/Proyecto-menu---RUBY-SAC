Rails.application.routes.draw do

  get 'mymenu/index'

  #get 'home/index'

  root 'home#index'
  
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
  
  resources :home
  
  resources :weeklocals
  
  resources :weekmenus
  
  #resources :users, controllers: {show: 'User'}
  
  devise_for :users

  devise_scope :user do
    authenticated :user do
      #root 'menus#index' #as: :authenticated_root
      #root 'home#index'
    end
  end
  
  #get 'home/index'
  #get '/home/:id', to: 'home#index'

  namespace :dynamic_select do
    get ':local_id/dishes', to: 'dishes#index', as: 'dishes'
  end

  # devise_scope :user do
  #   authenticated :user do
  #     #root 'menus#index' #as: :authenticated_root
  #     root 'home#index'
  #   end
  
  #   unauthenticated do
  #     #root 'locals#index'
  #     root 'devise/sessions#new', as: :unauthenticated_root
  #   end
  # end

 

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
