class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception
  #Esta linea de codigo se agrego ya que no nos dejaba crear sessions por cuestiones de seguridad, no permite guardar informacion enviada por un cliente, teiene que ser enviada desde un metodod de rail, pero como no tenemos timepo para esto, por eso cambiamos la liena de codigo 2 por esta.
  protect_from_forgery with: :null_session
end
