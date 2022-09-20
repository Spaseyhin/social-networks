# frozen_string_literal: true

Rails.application.routes.draw do
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

# рут для отображения заглушек книг
  get 'books/file'
  get 'bshow/one'
  get 'bshow/to'
  get 'bshow/tri'
  get 'bshow/four'
  get 'bshow/five'
  get 'bshow/six'
  get 'bshow/7'
  get 'bshow/8'
  get 'bshow/9'
  get 'bshow/10'
  get 'bshow/11'
  get 'bshow/12'

# рут для скачивания файлов
  get 'download_pdf', to: 'books#download_pdf'
  get 'download_jpg', to: 'books#download_jpg'

# руты книг и пользователей
  resources :users
  resources :books

  root 'books#index'
end
