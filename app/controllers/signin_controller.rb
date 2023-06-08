class SigninController < ApplicationController

    before_action :authorize_access_request!, only: [:destroy]

    def create
        user = User.find_by(email: params[:email])

        if user.authenticate(params[:password])
            payload = { user_id: user.id}
    end


    private 


end
