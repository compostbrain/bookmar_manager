Rails.application.routes.draw do


  devise_for :users
  root 'dashboard#index'
  post :incoming, to: 'incoming#create'
  resources :topics do
    resources :bookmarks, except: [:index]
  end
end
