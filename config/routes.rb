Rails.application.routes.draw do
  resources :sessions
  resources :users
  resources :places
  resources :posts
  resources :activities
  resources :tasks

  root to: "places#index"
end
