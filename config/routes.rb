Rails.application.routes.draw do
  resources :players
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/teams" =>"teams#index"
  get "/teams/new" =>"teams#new"
  get "/teams/:id" =>"teams#show"
  post "/teams" =>"teams#create"
  
end
