Rails.application.routes.draw do
  root 'static_pages#home'

  resources :moussaillons
  get '/new', to: 'moussaillons#new', as: 'new'
  get '/index', to: 'moussaillons#index', as: 'index'


  get '/contact', to: 'static_pages#contact', as: 'contact'

  get '/about', to: 'static_pages#about', as: 'about'

  
end
