Rails.application.routes.draw do
  root "home#index"
  get '/home', to: "home#index"
  get '/catalog', to: "catalog#index"
end
