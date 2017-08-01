class AbuelitaController < ApplicationController
  def index

  end
  #Aqui envia la informacion el submit de la formula, la guardamos en una variable y la reescribimos para enviar la respuesta de la abuela.
  def create
      @new_message = params[:new_message]

      case @new_message
        when 'bye tqm'
           @new_message = 'adios nieto'
           render 'abuelita/index'
        when @new_message.upcase
           @new_message ="NO, NO DESDE 1983"
           render 'abuelita/index'
        else
          @new_message = "he? no te escucho"
          render 'abuelita/index'
      end
  end

end
