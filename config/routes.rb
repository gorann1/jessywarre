# frozen_string_literal: true
Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do


  devise_scope :user do
    authenticated :user do
      root 'welcome#index', as: :authenticated_root
      get 'welcome/index'
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

  resources :locations do
    collection do
      get :regions

    end
  end

  get 'locations', to: 'locations#index'
  get '/locations/:id', to: 'locations#show'

  resources :center do
    resources :reservations, only: [:create]
  end

  resources :locations do
    resources :reservations, only: [:create]
  end

  ActiveAdmin.routes(self)
  devise_for :users, path: "", path_names: { sign_in: "login", sign_out: "logout", sign_up: "register" }
  get 'pages/home'

  # STATIC PAGES
  get 'contact', to: 'contacts#index'
  get 'about', to: 'pages#about'
  get 'terms', to: 'pages#terms'

  resources :articles do
    resources :comments
  end

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

end
  end
