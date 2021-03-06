Rails.application.routes.draw do
  resources :categories, only: [:show]
  devise_for :users
  root 'posts#index'
  get 'home/index'
  get 'home/mimetodo'
  get 'home/show/:nombre', to: 'home#show'
  resources :posts do
    resources :commets, only: [:create, :destroy]
  end
end
