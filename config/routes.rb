Rails.application.routes.draw do
  root "homes#index"
  get '/books', to: "books#index"
end
