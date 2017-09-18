Rails.application.routes.draw do

  resources :purchases
  resources :notifications
  get 'search/create'
  resources :sales do
      resources :sale_details
  end
  resources :patients
  resources :services
  resources :items
  resources :categories
  resources :units
  resources :brands
  devise_for :users
  root to: 'dashboard#index'
  get "/all", to: "patients#all"
  put "/patients/:id/baja", to: "patients#baja"
  put "/patients/:id/alta", to: "patients#alta"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
