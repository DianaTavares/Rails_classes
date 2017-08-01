class ArticlesController < ApplicationController

  #Esto se agrego por cuetiones de seguiridad, solo el que proporciones este nombre y contraseña podrá hacer uso de nuestro blog
  http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  #Ultimo elemento del CRUD (Delete), por ser el ultimo por eso va al final. Recuerda que pasa saber como llamar al metodo, en consolo usas la linea de omando $rails routes, buscas Delete y a la izquierda dice como se llama.
  def destroy
    #primero encontramos al articulo a eliminar
    @article = Article.find(params[:id])
    #ahora lo destruimos!!
    @article.destroy

    #una vez terminada esta accion, redirigimos a la pagina principal de articulos.
    redirect_to articles_path
  end

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end

end
