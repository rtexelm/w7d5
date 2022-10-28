Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  rescource :session only: [:new, :create, :destroy]
  resources :users only: [:create, :new, :edit, :update]
  # Defines the root path route ("/")
  # root "articles#index"
end
