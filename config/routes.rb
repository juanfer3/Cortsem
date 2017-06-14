Rails.application.routes.draw do
  resources :perdidas
  resources :telas_recibida
  resources :insumos
  resources :programaciones_realizada
  resources :programaciones
  resources :pedidos_detallado
  resources :telas
  resources :pedidos
  resources :clientes
  resources :empleados
  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'

  root :to =>'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
