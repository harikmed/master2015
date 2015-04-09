module SessionsHelper
 @@current_user=nil
def connecter user
	session[:login]=user.login
	session[:statut]=user.statut
	cookies[:user]={value: user.id, exprires: 1.minutes.from_now }
@@current_user=User.find(user.id)
	
end


def current_user
	@@current_user
end
def est_connecter?
!@@current_user.nil? && session  
end

def deconnecter
	reset_session
cookies=nil
session=nil
@@current_user=nil

end
end
