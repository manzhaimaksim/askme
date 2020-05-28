Rails.application.routes.draw do
  get 'user/destroy'
  root to: 'users#index'
  resources :users
  resources :questions, except: [:show, :new, :index]
  resources :sessions, only: [:new, :create, :destroy]
  get 'sign_up' => 'users#new'
  get 'log_out' => 'sessions#destroy'
  get 'log_in' => 'sessions#new'
end
