require 'date'


#Ejemplo de Usuarios
p user1 = User.create(name: "Diana", email: "diana@mail.com", admin: true  )
p user2 = User.create(name: "May", email: "may@mail.com", admin: false)
#Ejemplo de vuelos
#Para crear la fecha y hora de salida (depart) usamos la calse DateTime que tiene la siguiente sintaxis (año,mes,dia,hora,minutos,segundos) el mes no acepta un cero antes del numero, si es septiembre es 9 y no 09
flights1 = Flight.create(depart: DateTime.new(2017,10,3,15,30,00), from: "Mexico", to: "Cancun", duration: '2:50 h',  cost: 1500, available_seats: 18 )
Flight.create(depart: DateTime.new(2017,10,3,20,00,00), from: "Mexico", to: "Cancun", duration: '2:50 h',  cost: 1500, available_seats: 20 )
Flight.create(depart: DateTime.new(2017,11,26,7,00,00), from: "Tijuana", to: "Leon", duration: '3:00 h',  cost: 2500, available_seats: 20 )
Flight.create(depart: DateTime.new(2017,9,16,13,20,00), from: "Oaxaca", to: "Monterrey", duration: '3:00 h',  cost: 3000, available_seats: 20 )
Flight.create(depart: DateTime.new(2017,9,15,9,00,00), from: "Oaxaca", to: "Monterrey", duration: '3:00 h',  cost: 3000, available_seats: 20 )
#booking
p booking1 = Booking.create(flight_id: flights1.id , total: flights1.cost*2 )

#Booking-user
p UserBooking.create(user_id: user1.id, booking_id: booking1.id )
p UserBooking.create(user_id: user2.id, booking_id: booking1.id )

#User_flights
UserFlight.create(user_id: user1.id, flight_id: flights1.id)
UserFlight.create(user_id: user2.id, flight_id: flights1.id)
