Rails.application.routes.draw do
  root to: 'sessions#welcome'
  resources :users, only: [:new, :create, :show]
  resources :posts do
    resources :likes
  end

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'
end