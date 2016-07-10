Rails.application.routes.draw do

  root to: 'welcome#index'
  resources :users, only: [:new, :index, :create]
  resources :sessions, only: [:new, :destroy, :create]
  resources :rooms, except: [:update, :edit, :destroy] do
    resources :memberships, only: [:index, :create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
