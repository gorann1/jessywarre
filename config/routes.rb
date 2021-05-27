# frozen_string_literal: true
Rails.application.routes.draw do
  devise_scope :user do
    authenticated :user do
      root 'welcome#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  get 'centers', to: 'center#index'
  get 'center/show'
  ActiveAdmin.routes(self)
  devise_for :users, path: "", path_names: { sign_in: "login", sign_out: "logout", sign_up: "register" }
  get 'pages/home'
  get 'onama', to: 'pages#about'
  get 'uvjeti', to: 'pages#terms'
  get 'kontakt', to: 'pages#contact'
  get 'welcome/index'
  resources :articles do
    resources :comments
  end

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'



end
