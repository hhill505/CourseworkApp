class HomeController < ApplicationController
  def index
  	def index
		if session[:type] = "student"
  			@student = Student.find(session[:user_id])
  		elsif session[:type] = "professor"
  			@professor = Professor.find(session[:user_id])
  		end 

  end
  end
end
