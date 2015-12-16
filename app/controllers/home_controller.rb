class HomeController < ProtectedController
  	def index
		if session[:type] == "student"
  			@student = Student.find(session[:user_id])
  		elsif session[:type] == "professor"
  			@professor = Professor.find(session[:user_id])
  		end


  end
end
