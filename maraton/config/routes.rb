Rails.application.routes.draw do
  #get controlador/accion
  get 'cards/cards'
  get 'users/login'
  get'/decks/:deck_id/games/new' => 'games#new', as: 'new_game'
  get '/logout' => 'users#logout', as: 'log_out'
  get 'user/:user_id/profile' => 'users#profile', as: 'profile'
  get '/all_results'=> 'games#all_results', as: 'all_results'
  get '/new_deck' => 'decks#new', as: 'new_deck'


  #post 'Seccion de la vista de donde se obtiene' => 'Controller#metodo'

  post '/users/login_validator' => 'users#login_validator', as: 'login_validator'
  post '/user/:user_id/review_answers' => 'games#review_answers', as: 'review_answers'
  post '/decks/create' => 'decks#create', as: 'create_deck'
  post '/cards/create' => 'cards#create', as: 'create_card'


  root 'users#index'

  resources :users
  resources :games

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
