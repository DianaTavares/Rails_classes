Rails.application.routes.draw do
  #pagina de inicio
  root to: "flights#index"

  #gets
  get '/flights/flight_options' => 'flights#flight_options', as: 'flight_options'
  get 'user/index/flight/:flight_id' => 'users#index', as: 'users_index'
  get 'user/reservation_payment' => 'users#pay', as: 'users_pay'

  #posts
  post '/flight/:flight_id/user/:counter' => 'users#create', as: 'create_user'
  post '/users/recive/reservation_done' => 'users#recive', as: 'users_recive'



  #resourses
  resources :users

end
