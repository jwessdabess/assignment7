Rails.application.routes.draw do
  # get 'sessions/new'

  # get 'sessions/create'

  # get 'sessions/destroy'

  root to: "todo_lists#index"
  resources :todo_lists do
  	resources :todo_items
  end

  resources :accounts, only: [:show, :edit, :update]

  resources :sessions, only: [:create, :destroy, :new]
  get '/login' => "sessions#new", as: "login"
  delete '/login' => "sessions#destroy", as: "logout"
end
