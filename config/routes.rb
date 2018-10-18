Rails.application.routes.draw do


  get    "/login" => "session#new"
  post   "/login" => "session#create"
  delete "/login" => "session#destroy"

  root to: "restaurants#index"

  resources :users, except: [:index]
  resources :restaurants
  resources :reviews
  get "reviews/:id/like" => "reviews#like", as: "like_review"
  get "user/:id/unlike" => "reviews#unlike", as: "unlike_review"
  resources :cuisines, only: [:show, :index]
end
