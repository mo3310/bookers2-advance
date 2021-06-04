Rails.application.routes.draw do

  root 'homes#top'
  get "home/about" => "homes#about" , as: "about"
  devise_for :users

  resources :users
  resources :books, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
end
