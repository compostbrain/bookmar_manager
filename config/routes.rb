Rails.application.routes.draw do
  devise_for :users
  root 'dashboard#index'
  get 'topics/index'

  get 'topics/show'

  get 'topics/new'

  get 'topics/edit'
end
