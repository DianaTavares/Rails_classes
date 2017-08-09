Rails.application.routes.draw do
  #Esto es la primera eez que lo veo, al parecer es un acceso a la vista de elimitar (en los demas ejercicios el delete se hacia directamente en la vista del index con un link que permitia esta acción)
  resources :products do
    get "delete"
  end
  #agregamos el acceso a la página principal
  root to: "products#index"
end
