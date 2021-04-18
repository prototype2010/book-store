Rails.application.routes.draw do
  root "homes#index"
  get '/catalog', to: "catalog#index"
end
