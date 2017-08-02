Rails.application.routes.draw do
  #get 'urls/index'

  resources :urls

  root 'urls#index'

end
