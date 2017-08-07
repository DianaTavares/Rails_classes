class CardsController < ApplicationController

  def cards
    #guardamos el valor del deck enviado en el link
    deck_id = params[:param1]
    #buscamos todas las cartas que tienen ese deck_id
    @cards = Card.where(:deck_id => deck_id)

  end

  def new

  end

  def create
    p question = params[:decks][:question]
    p answer1 = params[:decks][:answer1]
    p answer2 = params[:decks][:answer2]
    p answer3 = params[:decks][:answer3]
    p correct_answer = params[:decks][:correct_answer]
    correct_answer.strip!
    p deck_id = params[:decks][:deck_id]
    Card.create(deck_id: deck_id, question: question, answer1: answer1, answer2: answer2, answer3: answer3, correct_answer: correct_answer)
    @new_deck=Deck.find(deck_id)
    render "new"
  end
end
