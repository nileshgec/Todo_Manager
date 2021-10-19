Rails.application.routes.draw do

  #get "todos", to: "todos#index"
  #post "todos/create", to: "todos#create"
  #get "todos/:id", to: "todos#show"

  resources :todos
  get "users", to: "users#index"
  post "users/create", to: "users#create"
  #get "users/:id", to: "users#show"
  get "users/login/:email", to: "users#login"
  #resources :users

end