Rails.application.routes.draw do
  post 'abuelita/index'

  resources :abuelita

   get '/index' => 'abuelita#index'

  root 'abuelita#index'
end
