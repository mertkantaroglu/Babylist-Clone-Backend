Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create] do
        resources :gifts, only: [:index, :show, :create, :new, :destroy]
      end

      resources :gifts, only: [:index, :show, :create, :new, :destroy]
    end
  end
end
