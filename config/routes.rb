Rails.application.routes.draw do
  root "homes#index"
  get '/home', to: "homes#index"
end
