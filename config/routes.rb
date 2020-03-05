Rails.application.routes.draw do

  root to: 'sessions#welcome'

  resources :users, only: [:new, :create, :show]

  resources :posts do
    resources :likes
    resources :comments
  end

  resources :comments do
    :comments
  end

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'
  delete 'logout', to: 'sessions#destroy'
end