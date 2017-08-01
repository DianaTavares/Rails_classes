class CommentsController < ApplicationController
  #Por cuestiones de seguridad, solo alguien autentificado podra eliminar comentarios
  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

  def create
    #Como hay una dependencia entre los articulos y los comentarios, encontramos el articulo, y sobre este, con un metodo de dependencia .comment, es que creamos el nuevo comentarios sobre ese articulo.
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    #redirige a la vista donde se desplegan todos los articulos y es ahi donde queremos que se muestren los comentarios, asi que procedemos a modificar el show.html.erc
    redirect_to article_path(@article)
  end

  #Metodo para eliminar comentarios
  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
