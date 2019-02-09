Rails.application.routes.draw do
  resources :texts
  resources :calls
  resources :devices
  resources :models
  resources :accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
