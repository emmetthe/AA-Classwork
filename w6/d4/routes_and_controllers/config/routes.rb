Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "/users", to: "users#index"
  # post "/users", to: "users#create"
  # get "/users/new", to: "users#new", as: 'new_user'
  # get "/users/:id/edit", to: "users#edit", as: 'edit_user'
  # get "/users/:id", to: "users#show", as: 'user'
  # patch "/users/:id", to: "users#update"
  # put "/users/:id", to: "users#update"
  # delete "/users/:id", to: "users#destroy"
  resources :users, except: [:new, :edit] do
    resources :artworks, only: [:index]
  end
  resources :artworks, except: [:new, :edit, :index]
  
  resources :comments, only: [:create, :destroy, :index]

  resources :likes, except: [:new, :edit, :update]

  resources :artwork_shares, except: [:new, :edit, :update]
end
