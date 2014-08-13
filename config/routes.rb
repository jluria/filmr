Rails.application.routes.draw do

  root "homes#show"

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
<<<<<<< HEAD
  resources :movies, only: [:new, :create, :show, :index]
  resources :talents, only: [:new, :create, :show, :index]
=======
  resources :movies, only: [:new, :create, :show]
>>>>>>> wa-browse-movie
end
