Rails.application.routes.draw do


  devise_for :users
  root 'dashboard#index'
  resources :topics do
    resources :bookmarks, only: [:show, :new, :create, :edit]
  end
end
