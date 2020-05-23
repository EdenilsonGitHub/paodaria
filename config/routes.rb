Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :usuarios
  resources :produtos
  resources :home, only: :index

  post 'logar', to: 'usuarios#logar'   , as: :logar
  get  'login', to: 'usuarios#login'   , as: :login
  get  'sair' , to: 'application#sair' , as: :sair

  root :to => 'home#index'

end
