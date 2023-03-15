# frozen_string_literal: true

Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, path: 'auth'

  resources :users, only: %i[index show], param: :username

  root to: 'users#index'
end
