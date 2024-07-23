Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :ruby, only: [:index, :show]
      resources :javascript, only: [:index, :show]
      resources :interview, only: [:index, :show]
    end
  end
end
