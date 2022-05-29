# frozen_string_literal: true

Rails.application.routes.draw do
  get 'user/new'
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
  get 'home/download_pdf'
  get 'books/file'

  get 'download_pdf', to: 'books#download_pdf'
  get 'download_jpg', to: 'books#download_jpg'

  resources :users
  resources :books

  root 'books#index'
end
