Rails.application.routes.draw do
  get 'sessions/new'
  root to: 'tasks#index'
  resources :tasks

  namespace :admin do
    resources :users
  end
end
