Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  resources :posts

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'    #maybe?
end