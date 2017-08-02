class WordsController < ApplicationController

  #Variable que almacenara los datos presentados por el usuario
  def home
    @word = Word.new
  end

  #Metodo al que se envia la infomacion del formulario
  def new_word
    #Guardamos la entrada del usuario
    @new_word = params[:new_word]
    #llamamos a un metodo que nos dara los anagramas de la palabra enviada por el usuario
    @anagrams = anagrams_maker(@new_word)
  end

  #Metodo que buscara en la base de datos si la palabra enviada por el usuario tiene anagramas
  def anagrams_maker(word)
    #convertimos la palabra a su canonica
    word = canonical(word)
    #buscamos en la base de datos todos los registros cuya canonica sea igual a la de la palabra ingresada por el usuario.
    anagrams = Word.where("canonical = ?", word)
    p"l"*50
    p anagrams
  end

  #metodo que crea la canonica de una palabra
  def canonical(word)
    if word.length > 1
    		word.chars.sort_by(&:downcase).join
    	else
    		word
    end
  end

end
