class PagesController < ApplicationController
  def home
    if cookies.signed[:mi_primera_cookies]
      puts cookies.signed[:mi_primera_cookie] 
    else
      cookies.signed[:mi_primera_cookie] = "Hello World signed"
    end

     if cookies.encrypted[:encriptada]
    puts cookies.encrypted[:encriptada]
    else
    cookies.encrypted[:encriptada] = "Secret text 🔐"
    end
  
    if session[:variable_session]
    puts session[:variable_session]
    else
    session[:variable_session] = "In the session 🧑‍💻"
    end 
  end   

end
