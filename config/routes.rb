Rails.application.routes.draw do
  #index route
  root to: "tasks#index"

  get "tasks", to: "tasks#index"
  #create route
  get "tasks/new", to: "tasks#new"

  #display one task route
  get "tasks/:id", to: "tasks#show", as: :task

  # post new item
  post "tasks", to: "tasks#create"

  # get edit to item
  get "tasks/:id/edit", to: "tasks#edit"

  #edit to item
  patch "tasks/:id", to: "tasks#update"

  #destroy
  delete "tasks/:id", to: "tasks#destroy"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

