# frozen_string_literal: true
Rails.application.routes.draw do
  devise_for :users, path: "", path_names: { sign_in: "login", sign_out: "logout", sign_up: "register" }
  get 'pages/home'
  get 'onama', to: 'pages#about'
  get 'pages/terms'
  get 'pages/contact'
  get 'welcome/index'
  resources :articles do
    resources :comments
  end

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  root 'welcome#index'
end
