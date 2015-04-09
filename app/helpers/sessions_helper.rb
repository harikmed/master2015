module SessionsHelper
	 
def connecter user
	session[:login]=user.login
	session[:statut]=user.statut
	cookies[:user]={value: user.id, exprires: 1.minutes.from_now }

	
end
def current_user= user
	@current_user=user
end
public 
def current_user
	User.find(cookies[:user])
end


end
