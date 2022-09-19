Rails.application.routes.draw do


  root to: "home#top"
  devise_for :users
  get "home/about" => "home#about", as: "about"

  resources :books, only: [:index, :show, :create, :edit, :update, :destroy]
  resources :users, only: [:index, :show, :edit, :update, :create]

end
