class UserController < ApplicationController
    # GET /user.json
    def index
        render :json => {
            user: ::User.all 
        }
    end 

    private 

    def params 
        @params = {
            name: 'hello'
        }
    end
end
