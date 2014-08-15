Rails.application.routes.draw do

  root "homes#show"

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :movies, only: [:show, :index]
  resources :talents, only: [:show, :index]

  namespace :admin do
    resources :movies, only: [:new, :create, :destroy]
    resources :talents, only: [:new, :create, :destroy]
  end
end
