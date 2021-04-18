Rails.application.routes.draw do
  root "homes#index"
  get '/home', to: "homes#index"
  get '/catalog', to: "catalog#index"
end
