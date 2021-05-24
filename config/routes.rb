Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  resources :users, only: [:show, :edit]
  resources :books, only: [:new, :create, :index, :show, :destroy]
end
