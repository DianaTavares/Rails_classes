class UsersController < ApplicationController
  def index
  end

  def new
  end

  def create
    name  = params[:users][:name]
     email = params[:users][:email]
     password = params[:users][:password]
     @user = User.find_by_email(email)
     if @user
       flash[:mensaje] = "usuario ya dado de alta, intente con otro correo"
       render "new"
     else
       @new_user = User.create(name: name, email: email, password: password)
       @decks = Deck.all
       session[:user_id]=@new_user.id
       p "s"*50
       p @new_user.id
       p session[:user_id]
       render "profile"
     end
  end
  #Metodo que te envia a la pagina de login
  def login

  end
  #metodo que valida que el email y el correo enviado sean correctos e inicie sesion.
  def login_validator
    email = params[:users][:email]
    password = params[:users][:password]
    @new_user = User.find_by_email(email)
    if password == @new_user.password
      p session[:user_id]=@new_user.id
      @decks = Deck.all
      render "profile"
    else
      flash[:mensaje] = "mail y/o password incorrectos"
      render "login"
    end
  end

  def profile
    @decks = Deck.all
  end

  def logout
    reset_session
    render "index"
  end



end
