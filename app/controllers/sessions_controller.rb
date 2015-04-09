class SessionsController < ApplicationController
	include SessionsHelper
  def new

  end

  def create
@user=User.where(login: params[:session][:login], passe: params[:session][:passe]) #retourn un tableau vide si rien
if ! @user.empty?
	@us=@user.first
	flash[:notice]= @us.login	
	connecter @us
	redirect_to sujets_path


else 
flash[:erreur]='Connexion erreur'
	redirect_to connexion_path
end 
  end

  def destroy
  	deconnecter 
  	redirect_to connexion_path
  end
def user_params
     
    end

end
