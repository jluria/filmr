Rails.application.routes.draw do

  root "homes#show"

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :movies, only: [:new, :create, :show, :index]
  resources :casts, only: [:new, :create, :show, :index]
end
