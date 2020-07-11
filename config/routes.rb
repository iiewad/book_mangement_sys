Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index] do
        collection do
          post :init_users
        end
      end
      resources :borrows, only: [:create]
    end
  end
end
