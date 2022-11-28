Rails.application.routes.draw do
  get 'list/new'
  get 'list/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :list, except: [:edit, :update] do
      resources :bookmark, only: %i[new create]
    end
  resources :bookmark, only: %i[destroy]
  end
