Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :lists, only: %i[index show create destroy] do
    resources :bookmarks, only: :create
    resources :reviews, only: :create
  end

  resources :bookmarks, only: :destroy
  resources :reviews, only: :destroy
end
