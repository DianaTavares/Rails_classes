class UrlsController < ApplicationController

  def home
  end

  def new
  end

  def create
    #Esta linea me permite saber que esta guardando params y desplegarlo e una pagina.
    #render plain: params[:url].inspect

    #Creamos un nuevo registro en la base de datos
     Url.create_url(url_params)

     index
  end

  def index

    p "Entro al index!!"
    @urls = Url.all
    render :action => "new"
  end

  def counter
    p "a"*30
    p params[:id]
    url_id = params[:id]
    url_used = Url.find_by_id(url_id)
    url_used.counter += 1
    url_used.save
    @urls = Url.all
    redirect_to "#{url_used.large}"
  end

  private
  def url_params
    params.require(:url).permit(:large)
  end



end
