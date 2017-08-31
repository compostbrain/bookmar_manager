<<<<<<< HEAD
  Rails.application.routes.draw do
=======
Rails.application.routes.draw do

>>>>>>> 9-User-Profiles
  devise_for :users
  resources :users, only: [:show]

  root 'dashboard#index'
  post :incoming, to: 'incoming#create'
  resources :topics do
    resources :bookmarks, except: [:index]
  end

  resources :bookmarks, except: [:index] do
    resources :likes, only: [:index, :create, :destroy]
  end
end
