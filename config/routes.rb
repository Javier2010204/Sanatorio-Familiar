Rails.application.routes.draw do
  resources :items
  resources :categories
  resources :units
  resources :brands
  devise_for :users
  root to: 'dashboard#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
