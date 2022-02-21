Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # resources :users
  resources :friends do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [:index, :destroy, :update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# root to: 'lists#index'
# resources :lists, except: [:edit, :update] do
#   resources :bookmarks, only: [:new, :create]
#   resources :reviews, only: :create
# end
# resources :bookmarks, only: :destroy
# resources :reviews, only: :destroy
# end
