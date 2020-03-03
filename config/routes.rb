Rails.application.routes.draw do
  resources :users, only: [:index, :new, :show, :create]
  resources :post, only: [:index, :new, :show, :create]

  get 'comment/show'
  get 'comment/new'
  get 'comment/create'
  get 'comment/delete'
  get 'post/index'
  get 'post/show'
  get 'post/create'
  get 'post/edit'
  get 'post/new'
  get 'post/delete'
  get 'post/update'
  get 'user/index'
  get 'user/show'
  get 'user/create'
  get 'user/edit'
  get 'user/new'
  get 'user/delete'
  get 'user/update'
  get 'user/index'
end
