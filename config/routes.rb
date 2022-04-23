Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users
  get "home/about" => "homes#about", as: "about"
  post 'books' => 'books#create'

  resources :books, only: [:new, :create, :show, :index, :destroy, :edit, :update]
  resources :users, only: [:show, :index, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
