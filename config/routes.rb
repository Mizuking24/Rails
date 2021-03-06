Rails.application.routes.draw do
  get 'todolists/new', as: "todolist_new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "top" => "homes#top", as: "top"
  post "todolists" => "todolists#create"
  get "todolists" => "todolists#index"
  get "todolists/:id" => "todolists#show", as: "todolist"
  get "todolists/:id/edit" => "todolists#edit", as: "edit_todolist"
  patch "todolists/:id" => "todolists#update", as: "update_todolists"
  delete "todolists/:id" => "todolists#destroy", as: "destroy_todolist"
end
