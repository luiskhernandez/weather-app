Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :weather, only: [:index, :show]
  resources :cities, only: [:index]
  root "weather#show"
end
