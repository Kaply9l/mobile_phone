# frozen_string_literal: true

Rails.application.routes.draw do
  use_doorkeeper

  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }

  get 'products/index'
  resources :product, only: %i[new edit update show destroy create]

  resources :category, only: [:show]

  resource :cart, only: %i[destroy show] do
    resources :items, only: %i[destroy create]
  end

  resources :search, only: [:index]

  namespace :api do
    namespace :v1 do
      resources :profile,  only: [:index]
      resources :products, only: [:index]
    end
  end

  get 'cart/index' => 'decoration#new'
  get 'category/cart/index' => 'decoration#new'
  get 'product/cart/index' => 'decoration#new'
  resources 'decoration'

  root 'main#index'
end
