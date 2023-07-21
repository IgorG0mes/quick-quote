Rails.application.routes.draw do
  resources :settings
  resources :comissions
  resources :order_items
  resources :orders
  resources :clients
  resources :users
  resources :products
  resources :suppliers
end
