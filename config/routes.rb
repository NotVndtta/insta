Rails.application.routes.draw do
  resources :posts
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'posts#index'
  get "/users", to: "users#index"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :posts do
    resources :comments
      member do
        post 'like'
        delete 'unlike'
      end
end
end
