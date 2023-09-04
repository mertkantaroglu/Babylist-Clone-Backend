Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create] do
        resources :gifts, only: [:index, :show, :create, :new, :destroy]
        resources :cart_items, only: [:index, :show, :create, :destroy]
      end

      resources :gifts, only: [:index, :show, :create, :new, :destroy] do
        resources :cart_items, only: [:index, :show, :create, :destroy]
      end
    end

      # resources :gifts,
  end
end
