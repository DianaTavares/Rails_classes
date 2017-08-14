# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version 2.4.0

El ejercicio consiste en crear una aplicacion para reservar vuelos con las siguientes indicaciones

Registro de Vuelos
Usando Rails vas a crear una aplicación que lleve reservaciones de vuelo, para esto toma como ejemplo el proceso de reservación, el flujo de información y las vistas que se muestran en la aplicación de ClickBus.

La aplicación deberá considerar lo siguiente:


a) La clase User tiene los siguientes atributos: name, email, admin.

b) La clase Flight tiene los siguientes atributos: num_flight, date, depart, from, to, duration, cost, passengers.

c) Reservaciones:

El usuario podrá buscar vuelos (flights):

--------------------------------------------------
            ¡¡¡Encuentra tu vuelo!!!
--------------------------------------------------
From:
Western Sahara
To:
Saudi Arabia
Date:
2015-06-15
Passengers (1, 2, 3, 4...):
3
--------------------------------------------------

El usuario podrá realizar reservaciones de vuelo, la clase Booking (reservación) deberá considerar lo siguiente:

Información de vuelo(No. Vuelo, Date, Depart, from - to, Duration, Precio).
Passengers Information: Name, Email.
Atributos de la clase Booking: num_booking, total, flight_id.

TIPS:

Diseña la base de datos basada en los siguientes requerimientos:

Un User puede tener muchos Flights.
Un Flight puede tener muchos Users.
Un Flight tiene muchas Bookings.
Una Booking pertenece a un solo Flight.
Una Booking tiene muchos Users.
Un User tiene muchas Bookings.
Puedes tomar como ejemplo el diseño de la base de datos y el código utilizado en el examen 2 de la fase 1 (registro de vuelos).

Crea un seed que contemple entre 10 y 15 registros de prueba.

Restricciones:

Considera que solamente se mostrarán los vuelos que cumplen los criterios de búsqueda, en particular el número de pasajeros.
El número de asientos disponibles de un vuelo tiene que verse afectado por el número de pasajeros de la reservación.
Observa la aplicación de ClickBus, para poder hacer una reservación tiene que haber un responsable de esa reserva.
El ticket de compra deberá tener la opción de mostrar el detalle de la compra (información de Vuelo, No. de reservación, pasajeros que realizaron la reservación y costo).
Trata de usar AJAX, en particular para registrar a los pasajeros en la reservación del vuelo.
WARNING: Prohibido usar scaffold.

---------Empezamos con los comentarios de la programación ------------------------------
