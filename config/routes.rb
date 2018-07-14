Rails.application.routes.draw do
  resources :device_post_tests
  resources :device_pre_tests
  resources :tests
  resources :repair_order_items
  resources :technicians
  resources :technician_statuses
  resources :device_repair_orders
  resources :devices
  resources :device_components
  resources :device_versions
  resources :device_manufacturers
  resources :device_component_statuses
  resources :customers
  resources :repair_orders
  resources :repair_order_statuses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
