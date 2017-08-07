class GamesController < ApplicationController

  def new
    @game = Game.new
    @cards = Card.where(:deck_id => params[:deck_id])
  end

  def create
    deck_id = params[:game][:deck_id]
    #Este contador nos ayudara a ir recorriendo el hash params donde estan las respeustas del usuario
    counter = 1
    #Contador de respuestas correctas
    correct_answer = 0
    #llamamos a las cartas que tiene el deck usado por el usuario.
    cards = Card.where(:deck_id => deck_id)
    #para cada carta, comparamos su respuesta correcta con la dada por el usuario. si es la misma el contador de respuestas correctas aumenta en uni.
    cards.each do |card|
      p "s"*50
      p params[:"#{counter}"]
      p card.correct_answer
      if card.correct_answer == params[:"#{counter}"]
        correct_answer += 1
      end
      counter += 1
    end
    p "s"*50
    p session[:user_id]
    p @new_game = Game.create(correct_answer: correct_answer, user_id: session[:user_id], deck_id: deck_id)
    @games = Game.where(:user_id => session[:user_id])
    if @new_game.save
      render 'result'
    end

  end

  def all_results
    p "s"*50
    p @games = Game.all
  end

end
