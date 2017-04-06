Rails.application.routes.draw do
  get 'home/index'
  get 'home/mimetodo'
  get 'home/show/:nombre', to: 'home#show'

  get 'posts', to: 'posts#index'
  get 'posts/new'
  get 'posts/:id', to: 'posts#show'
  post 'posts', to: 'posts#create'
end
