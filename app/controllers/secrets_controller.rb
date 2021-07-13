class SecretsController < ApplicationController
    
    before_action :require_login

    def new
    end
    
    def show
    end

    def require_login
        unless session.include? :name
            redirect_to login_path
            #return head(:forbidden)
        end
        
    end

end
