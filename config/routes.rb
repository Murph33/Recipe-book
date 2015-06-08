Rails.application.routes.draw do

  root "welcome#index"
  resources :recipes
#  get "recipes/" => "recipes#index"
#  get "recipes/:id" => "recipes#show"
#  get "recipe/new" => "recipes#new"
#  post "recipes" => "recipes#create"
#
#  get "recipe/:id" => "recipes#edit", as: :recipe
#  patch "recipe/:id" => "recipes#update"
#  delete "recipe/:id" => "recipes#delete"

end
