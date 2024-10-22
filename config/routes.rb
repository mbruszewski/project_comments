Rails.application.routes.draw do
  resources :projects
  resources :comments, only: [:new, :create, :edit, :update, :destroy]

  root "projects#index"
end
