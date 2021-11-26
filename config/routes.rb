Rails.application.routes.draw do
  get 'article/new'
  get 'home/index'
  get 'home/about'
  get 'home/contact'
  root'ar#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
