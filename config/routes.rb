# frozen_string_literal: true

# Routes
Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  root 'home#index'
end
