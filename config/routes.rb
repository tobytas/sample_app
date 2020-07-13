Rails.application.routes.draw do
  root 'static_pages#home'

  # Named routes:

  # get 'static_pages/home'
  get 'home' => 'static_pages#home'

  # get 'static_pages/help'
  get 'help' => 'static_pages#help'

  # get 'static_pages/about'
  get 'about' => 'static_pages#about'

  # get 'static_pages/contact'
  get 'contact' => 'static_pages#contact'

  # get 'users/new'
  get 'signup' => 'users#new'

  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
