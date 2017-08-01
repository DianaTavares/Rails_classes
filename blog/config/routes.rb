Rails.application.routes.draw do
  get 'welcome/index'

#Asi se crea una rota!! esta fue para sustituir la de Delete que no funciono.
  # get '/articles/:article_id', to:
  # 'articles#destroy', as: 'remove'

  # delete '/articles/:article_id', to:
  # 'articles#destroy', as: 'remove'

#Ahora q  ue hemos agregado la tabla de comentarios, esta ruta se modifica, la nueva ruta crea a comentarios como un "nested resource" un recurso anidado dentro de articles. 
  #resources :articles

  resources :articles do
    resources :comments
  end

  root 'welcome#index'
end
