# frozen_string_literal: true

Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, path: 'auth'

  root to: 'home#index'

  resources :users, only: %i[index show], param: :username
  resources :authors
end
