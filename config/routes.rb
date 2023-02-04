Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: %i[index show] do
        resources :posts, only: %i[index show new create destroy] do
          resources :comments, only: %i[new create destroy]
        end
      end
    end
  end

  devise_for :users, controllers: { confirmations: 'confirmations' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, only: %i[index show] do
    resources :posts, only: %i[index show new create destroy] do
      resources :comments, only: %i[new create destroy]
      resources :likes, only: %i[create]
    end
  end
  # Defines the root path route ("/")
  root 'users#index'
end
