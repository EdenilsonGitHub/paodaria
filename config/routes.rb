Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :empresas
  resources :ingredientes
  resources :parceiros
  resources :produtos
  resources :usuarios
  resources :unidade_medidas
  resources :classes

  resources :dashboards, only: :index
  resources :home, only: :index
  
  # Application
  get 'sair', to: 'application#sair', as: :sair
  
  # Cadastros
  get 'cadastros_index', to: 'cadastros#index' , as: :cadastros_index

  # Produtos
  get 'loja'                    , to: 'produtos#loja'                    , as: :loja
  get 'logs'                    , to: 'produtos#logs'                    , as: :logs
  get 'ordenar_por_nome'        , to: 'produtos#ordenar_por_nome'        , as: :ordenar_por_nome
  get 'ordenar_por_preco_maior' , to: 'produtos#ordenar_por_preco_maior' , as: :ordenar_por_preco_maior
  get 'ordenar_por_preco_menor' , to: 'produtos#ordenar_por_preco_menor' , as: :ordenar_por_preco_menor
  get 'ordenar_por_promocao'    , to: 'produtos#ordenar_por_promocao'    , as: :ordenar_por_promocao

  # Usuarios
  post 'logar', to: 'usuarios#logar' , as: :logar
  get  'login', to: 'usuarios#login' , as: :login

  # Rota inicial
  root :to => 'home#index'

end