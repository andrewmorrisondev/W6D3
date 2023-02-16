Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :users
  # get "/users", to: 'users#index'
  # get "/users/new", to: 'users#new', as: "new_user"
  # post "/users", to: 'users#create'
  # get "/users/:id", to: "users#show", as: "user"
  # get "/users/:id/edit", to: "users#edit", as: "edit_user"
  # patch "/users/:id", to: "users#update"
  # put "/users/:id", to: "users#update"
  # delete "/users/:id", to: "users#destroy"

  resources :users, only:[:create, :destroy, :index, :show, :update]
  resources :artworks, only:[:create, :destroy, :show, :update]
  post "/artwork_share", to: 'artwork_share#create'
  delete "/artwork_share/:id", to: "artwork_share#destroy"
  resources :users do
    resources :artworks, only: :index
  end

  # Defines the root path route ("/")
  # root "articles#index"
end
