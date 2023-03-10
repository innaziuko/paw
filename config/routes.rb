Rails.application.routes.draw do
  resources :shelters do
    resources :pets, only: [:show]
  end
  resources :pets
  devise_for :users
  root to: "pages#home"
  resources :pets, only: %i[index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "pages/profile", to: "pages#profile"
end
