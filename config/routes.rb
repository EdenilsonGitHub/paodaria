Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :empresas
  resources :produtos
  resources :usuarios
  resources :ingredientes
  resources :parceiros

  
  resources :home, only: :index

  post 'logar', to: 'usuarios#logar'   , as: :logar
  get  'login', to: 'usuarios#login'   , as: :login
  
  get  'sair' , to: 'application#sair' , as: :sair
  
  get  'loja' , to: 'produtos#loja'    , as: :loja

  root :to => 'home#index'

end