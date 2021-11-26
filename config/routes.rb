Rails.application.routes.draw do
  get 'article/new'
  get 'index' => 'home#index'
  get 'about' => 'home#about'
  get 'contact' => 'home#contact'
  root'ar#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
