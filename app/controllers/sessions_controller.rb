class SessionsController < ApplicationController
    
    def new
    end
  
    def create
      if params[:name].nil?
        redirect_to login_path
      elsif params[:name].empty?
        redirect_to login_path
      else
        session[:name] = params[:name]
        redirect_to '/'
      end
    end

    def destroy

        if !session[:name].nil?
          session[:name] = nil
        end
        
    end
      
end
