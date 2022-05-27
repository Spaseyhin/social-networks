# frozen_string_literal: true

Rails.application.routes.draw do
  get 'user/new'
  get 'resumes/show'
  get 'users/new'
  get 'article/new'
  get 'index' => 'home#index'
  get 'about' => 'home#about'
  get 'contact' => 'home#contact'
  get 'signup' => 'users#new'
  get 'resumes/login'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get "home/download_pdf"
  resources :users
 
   resources :books, only: [:index,  :new, :create, :destroy]
   resources :resumes, only: [:index,  :new, :create, :destroy]
   root "books#index"
 end
