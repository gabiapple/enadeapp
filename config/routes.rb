Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :instituicoes, :cursos

  resources :perfomance, except: [:index, :destroy]

  root 'ranking#index'

  get '/ranking', to: 'ranking#index'
end
