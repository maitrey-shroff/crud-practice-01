Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/bikes", to: "bikes#index"

  get "/bikes/new", to: "bikes#new"
  post "/create", to: "bikes#create"

  get "/bikes/:id/edit", to: "bikes#edit"
  patch "/bikes/:id", to: "bikes#update"

  get "/bikes/:id", to: "bikes#show"

  delete "/bikes/:id/", to:"bikes#destroy"

end
