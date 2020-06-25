Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :devs, only: [:index, :show]
  resources :projects, only: [:index, :show]
end
