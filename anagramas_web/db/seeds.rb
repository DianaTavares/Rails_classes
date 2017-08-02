# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

#Este metodo sirve para crear la palabra canonica de word
require 'csv'

#para obtener la canonica (ordanar las letras de un palabra por orden alfabetico) de una palabra
def canonical(word)
	if word.length > 1
  		word.chars.sort_by(&:downcase).join
  	else
  		word
  	end
end

#guardamos las palabras del archivo word.csv en la base de datos junto con su canonico

CSV.foreach("words.csv") do |n|
	p canonical(n[0])
  Word.create(word: n[0], canonical: canonical(n[0]))
end
