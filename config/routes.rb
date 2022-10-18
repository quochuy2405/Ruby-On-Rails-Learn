Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "articles#index"
  get "/users", to: "user#index"
  get "/articles", to: "article#index"
  get "/articles/:id", to: "article#get_by_id"
  get "/articles/delete/:id", to: "article#delete"
  get "/articles/update/:id", to: "article#update"
end   

