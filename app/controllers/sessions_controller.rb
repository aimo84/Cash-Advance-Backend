class SessionsController < ApplicationController
    
    def new
    end

    def create
        user = User.find_by(email: params[:email])
    
        if user && user.authenticate(params[:password])
        # Generate a JWT token
        payload = { user_id: user.id, user_type: params[:userType] }
        token = JWT.encode(payload, Rails.application.secrets.secret_key_base)
    
        render json: { token: token }
        else
        render json: { error: 'Invalid email or password' }, status: :unauthorized
        end
    end

    def destroy
    session[:user_id] = nil
    head :ok
    end

end

