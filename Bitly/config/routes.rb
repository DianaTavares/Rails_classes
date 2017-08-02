Rails.application.routes.draw do

  root 'urls#new'

  resources :urls

  get "/:id" => "urls#counter"

end
