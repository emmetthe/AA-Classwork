Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do
    resources :subs, only: [:new, :create, :edit, :update]
      resources :posts, only: [:]
  end

  resource :session, only: [:new, :create, :destroy]
  resources :subs, only: [:index, :show]

  resources :posts,
end
