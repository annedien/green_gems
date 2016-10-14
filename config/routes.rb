Rails.application.routes.draw do
  get 'pages/home'
  root to: 'pages#home'
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :profiles, only: [:new, :edit, :create, :update]
  resources :products
end
