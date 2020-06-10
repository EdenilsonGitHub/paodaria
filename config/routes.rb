Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :empresas
  resources :ingredientes
  resources :parceiros
  resources :produtos
  resources :usuarios

  resources :dashboards, only: :index
  resources :home, only: :index

  # Usuarios
  post 'logar', to: 'usuarios#logar'   , as: :logar
  get  'login', to: 'usuarios#login'   , as: :login
  
  # Application
  get  'sair' , to: 'application#sair' , as: :sair
  
  # Produto
  get  'loja' , to: 'produtos#loja'    , as: :loja

  # Rota inicial
  root :to => 'home#index'

end