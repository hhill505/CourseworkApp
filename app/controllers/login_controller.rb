class LoginController < ApplicationController
  def index
  end

  def authenticate
        student = nil
        professor = nil
  	  	student = Student.find_by(netid: params[:username], password: params[:password])
        
  	  	professor = Professor.find_by(netid: params[:username], password: params[:password])

  	if student 
  		session[:user_id] = student.id 
      session[:type] = nil
  		session[:type] = "student"
  		flash[:message] = "You have been logged in, #{session[:type]}"
  		redirect_to home_path
    
  	elsif professor 
  		session[:user_id] = professor.id
      session[:type] = nil
  		session[:type] = "professor"
  		flash[:message] = "You have been logged in, #{session[:type]}"
  		redirect_to home_path
  	else 
  		flash[:message]= "You have not been logged in. User can’t be found"
  		redirect_to login_path
  	end
  end

  def logout
  	session[:user_id] = nil
  	session[:type] = nil
  	flash[:message] = "You have been logged out"
    redirect_to login_path
  end
end
