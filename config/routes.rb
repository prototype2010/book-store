Rails.application.routes.draw do
  root "homes#index"
  resources :books, only: [:index, :show]
end
