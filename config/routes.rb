require 'sidekiq/web'
Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'layout', to: 'pages#layout'
  get 'retry', to: 'pages#retry'
  get 'faster', to: 'pages#faster'
  get 'model', to: 'pages#model'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    mount Sidekiq::Web => '/sidekiq'
end
