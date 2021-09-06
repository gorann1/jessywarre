# frozen_string_literal: true
Rails.application.routes.draw do
  scope "(:locale)", locale: /en|de/ do
  get 'contact', to: 'contacts#index'
  devise_scope :user do
    authenticated :user do
      root 'welcome#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end


  get 'reservations', to: 'reservations#index'

  resources :centers
  get 'centers', to: 'centers#index'
  scope controller: :pages do
    get :up
  end

  resources :locations
  get 'locations', to: 'locations#index'
  get '/locations/:id', to: 'locations#show'

  resources :center do
    resources :reservations, only: [:create]
  end

  resources :locations do
    resources :reservations, only: [:create]
  end
  end

  ActiveAdmin.routes(self)
  devise_for :users, path: "", path_names: { sign_in: "login", sign_out: "logout", sign_up: "register" }
  get 'pages/home'
  get 'onama', to: 'pages#about'
  get 'uvjeti', to: 'pages#terms'
  get 'welcome/index'
  resources :articles do
    resources :comments
  end

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

end
