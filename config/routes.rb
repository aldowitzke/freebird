Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # events nested to use projects_id
  resources :projects do
    resources :events, only: [ :new, :create ]
  end

  resources :events, only: [ :show, :index, :edit, :update, :destroy]
end
