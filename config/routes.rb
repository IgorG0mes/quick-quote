Rails.application.routes.draw do
  resources :comissions
  resources :order_items
  resources :orders
  resources :clients
  resources :users
  resources :products
  resources :suppliers
  get 'app_configurations', to: 'app_configurations#index'
  patch 'app_configurations', to: 'app_configurations#update'
end
