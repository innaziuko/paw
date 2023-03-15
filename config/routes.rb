Rails.application.routes.draw do
  resources :shelters do
    resources :pets, only: [:show]
  end
  get "shelters/:id/dashboard", to: "shelters#dashboard", as: "shelter_dashboard"
  resources :pets, except: [:create]
  post "pets", to: "pets#create", as: "create_pet"
  devise_for :users
  root to: "pages#home"
  resources :pets, only: %i[index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "pages/profile", to: "pages#profile"
  resources :pets do
    collection do
      get :all
    end
    resources :appointments, only: %i[create destroy]
  end

  resources :appointments, only: [:index]
end
