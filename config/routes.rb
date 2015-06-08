Rails.application.routes.draw do

  root "welcome#index"

  get "recipes/" => "recipes#index"
  get "recipes/:id" => "recipes#show", as: :recipe
  get "recipe/new" => "recipes#new"
  post "recipes" => "recipes#create"

  get "recipes/:id/edit" => "recipes#edit", as: :edit_recipe
  patch "recipes/:id" => "recipes#update"
  delete "recipes/:id" => "recipes#delete"

end
