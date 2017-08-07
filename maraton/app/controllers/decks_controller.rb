class DecksController < ApplicationController
  def new
  end

  def create
    p name = params[:decks][:name]
    @new_deck = Deck.create(name: name)
    if @new_deck.save
      render "cards/new"
    end
  end

end
