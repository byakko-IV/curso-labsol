Rails.application.routes.draw do
  get 'home/index'
  get 'home/mimetodo'
  get 'home/show/:nombre', to: 'home#show'
  resources :posts
end
