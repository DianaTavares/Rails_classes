Rails.application.routes.draw do
  #Esto indica cual es la página principal de la aplicacion. Es 'controller_name#method_name' el nombre del metodo es el mismo que el de la vista.
  root 'words#home'

  #para recibir las respuestas de los pedidos del formulario deifnimos un post que llama al metodo new_word del controlador words
  post '/anagrams' => 'words#new_word'
end
