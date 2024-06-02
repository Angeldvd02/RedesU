Rails.application.routes.draw do
  devise_for :users , :controllers => { :registrations => 'users/registrations' }
  resources :books
  resources :notes
  root :to => 'books#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
