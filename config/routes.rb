Rails.application.routes.draw do

  get 'posts/new'

  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get '/hall' => 'static_pages#hall'
  resources :posts

end
