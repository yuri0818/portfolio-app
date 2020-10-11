Rails.application.routes.draw do
  get 'sessions/new'
  
  get 'books/search'

  root 'static_pages#top'
  get '/signup', to: 'users#new'
  
   # ログイン機能
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :events
  resources :users
end
