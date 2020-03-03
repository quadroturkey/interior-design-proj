Rails.application.routes.draw do
  resources :users, only: [:index, :new, :show, :create]
  resources :posts, only: [:index, :new, :show, :create]
end