class UsersController < ApplicationController
  def index
    p "x"*50
    p flight_id = params[:flight_id]
    p @flight = Flight.find(flight_id)
    p @booking = Booking.create(flight_id: @flight.id)
    p session[:booking_id] = @booking.id
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    p "s"*20
    p params
    p session[:booking_id]
    p booking = Booking.find(session[:booking_id])
    p flight = Flight.find(booking.flight_id)
    @user = User.find_by_email(params[:users][:email])
    if @user == nil
      @user = User.create(name: params[:users][:name], email: params[:users][:email])
    end
    p UserBooking.create(user_id: @user.id ,booking_id: booking.id )
    p UserFlight.create(user_id: @user.id, flight_id: flight.id)
    p booking.update(total: flight.cost * session[:counter])
    p flight.update(available_seats: flight.available_seats - 1)

  end

  def pay
    p "x"*30
    users = User.all
    @users_booking = []
    users.each do |user|
      user_bookings = user.bookings
      user_bookings.each do |user_booking|
        if user_booking.id == session[:booking_id]
          p @users_booking << user
        end
      end
    end
    @booking = Booking.find(session[:booking_id])
  end

  def recive
    p "l"*30
    p params
    @user_responsable = User.find_by_email(params[:users][:emial])
    if @user_responsable
      @user_responsable.update(admin: true)
    else
      @user_responsable= User.create(name: params[:users][:name], email: params[:users][:name], admin: true)
    end
    users = User.all
    @users_booking = []
    users.each do |user|
      user_bookings = user.bookings
      user_bookings.each do |user_booking|
        if user_booking.id == session[:booking_id]
          p @users_booking << user
        end
      end
    end
    @booking = Booking.find(session[:booking_id])
    @flight = Flight.find(@booking.flight_id)
  end

private
  def user_params
    params.require(:user).permit(:name, :email)
  end

end
