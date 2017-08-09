Rails.application.routes.draw do
  #Aqui van los get
  get 'roll/index'

  #Aquí van los posts
  post '/rolls' => 'roll#rolls', as: 'rolls'

  #Hola pagina principal!!
  root 'roll#index'
end
