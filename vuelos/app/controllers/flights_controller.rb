class FlightsController < ApplicationController
  def index
    p "index "*15
    @flights = Flight.all
    @froms = []
    @tos = []
    @dates = []
    @flights.each do |flight|
      @froms << flight.from
      @tos << flight.to
      p @dates << flight.depart.strftime('%d-%m-%Y')
    end
    p @froms.uniq!.sort!
    p @tos.uniq!.sort!
    p @dates.sort!



  end

  def flight_options
    #Buscamos los vuelos en nuestra base de datos con la información seleccionada por el usuario
    p "x"*30
    p @from = params[:from]
    p @to = params[:to]
    p @date = params[:date]
    p session[:passangers] = params[:passangers]
    p session[:counter] = 1
    @flights_options = []
    p @flights_destiny = Flight.where(from: @from, to: @to)
    @flights_destiny.each do |flight|
      if flight.depart.strftime('%d-%m-%Y') == @date
      @flights_options << flight
      end
    end

  end

end
