Rails.application.routes.draw do


  get    "/login" => "session#new"
  post   "/login" => "session#create"
  delete "/login" => "session#destroy"


  resources :users, except: [:index]
  resources :restaurants
  resources :reviews
  resources :cuisines, only: [:show, :index]
end
