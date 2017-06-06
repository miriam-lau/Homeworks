Rails.application.routes.draw do
  resources :books, :comics, only: [:new, :create, :index, :destroy]
end
