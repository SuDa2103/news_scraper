Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'layout', to: 'pages#layout'
  get 'retry', to: 'pages#retry'
  get 'faster', to: 'pages#faster'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
