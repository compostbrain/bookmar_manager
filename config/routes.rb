Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:show]

  root 'dashboard#index'

  resources :topics do
    resources :bookmarks, except: [:index]
  end

  resources :bookmarks, except: [:index] do
    resources :likes, only: [:index, :create, :destroy]
  end
end
