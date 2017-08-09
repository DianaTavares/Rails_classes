# README

Este ejercicio se elabora siguiendo el tutorial
https://richonrails.com/articles/basic-ajax-in-ruby-on-rails

Su objetivo es aprender mas acerca de Ajax y su uso con vistas parciales.

=> en la parte de la creacion del modelo y el archivo de migración hice una modificacion con el

rails g resource Product name price:decimal{12,2}

No me aceptaba el price:decimal{12,2}, tiene que ser de la siguiente manera

rails g resource Product name price:decimal{'12,2'}
