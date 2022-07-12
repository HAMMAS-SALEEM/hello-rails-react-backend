Rails.application.routes.draw do
  resources :posts
  get 'latest', to: 'posts#latest'
  devise_for :users
  namespace :v1, defaults: { format: 'json' } do
    resources :messages, only: [:index]
    resources :users, only: [:index, :create]
  end
end
