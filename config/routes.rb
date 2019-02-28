Rails.application.routes.draw do

  # post 'anonymous_messages/create', to: 'anonymous_messages#create'
  get 'contact', to: 'pages#contact', as: :contact
  get 'about', to: 'pages#about', as: :about

  devise_for :users
  root to: "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/search", to: "projects#search"
  get "/my_events", to: "events#my_events"
  get "/my_events_user", to: "events#my_events_user"
  patch "/events/:id/accepted", to: "events#accepted", as: 'accepted'
  patch "/events/:id/unaccepted", to: "events#unaccepted", as: 'unaccepted'

  # events nested to use projects_id
  resources :projects do
    resources :events, only: [ :new, :create ]
    resources :reviews, only: [ :new, :create ]
    resources :anonymous_messages, only: [ :create, :update ]
  end
  resources :reviews, only: [ :show, :edit, :update, :destroy ]

  resources :events, only: [ :show, :index, :edit, :update, :destroy]
end
