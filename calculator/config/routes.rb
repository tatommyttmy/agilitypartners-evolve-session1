Rails.application.routes.draw do
  get 'calculator/index'
  post 'calculator/operate'
  post 'calculator/build'
  post 'calculator/calculate'

  root 'calculator#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
