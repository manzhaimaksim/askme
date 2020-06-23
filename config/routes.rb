Rails.application.routes.draw do
  root to: 'users#index'
  resources :users
  resources :questions, except: [:show, :new, :index]
  resources :sessions, only: [:new, :create, :destroy]
  resources :hashtags, only: [:show], param: :text

  get 'sign_up' => 'users#new'
  get 'log_out' => 'sessions#destroy'
  get 'log_in' => 'sessions#new'
end
