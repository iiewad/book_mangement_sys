Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, param: :user_no,  only: [:show] do
        collection do
          post :init_users
        end
      end
      resources :borrows, only: [:create]
      resources :books, only: [:show]
    end
  end
end
