Rails.application.routes.draw do
  get 'user/new'
  get 'users/new'
  get 'article/new'
  get 'index' => 'home#index'
  get 'about' => 'home#about'
  get 'contact' => 'home#contact'
  get 'signup' => 'users#new'
  root'ar#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end