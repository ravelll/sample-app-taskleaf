Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # 1つのエンドポイントに複数のメソッドを紐づけたいとき
  # match '/login', to: 'sessions#create', via: [:post, :patch, :put]

  root to: 'tasks#index'
  resources :tasks do
    post :confirm, action: :confirm_new, on: :new
    post :import, on: :collection
  end

  namespace :hoge do
    get '/tasks', controller: :tasks, action: :index, format: :xlsx
  end

  namespace :admin do
    resources :users
  end
end
