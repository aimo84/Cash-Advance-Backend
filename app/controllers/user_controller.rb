class UserController < ApplicationController

    before_action :set_user, only: [:show, :destroy]

    def index
    render json: User.all
    end

    def show

    end

    def create 
        user = User.create(user_params)

        if user.valid?
            token = encode_token(user_id: user.id, user_type: user_params[:userType])
            render json: { user: user, token: token }, status: :ok
        else
            render json: { error: 'Invalid username or password' }, status: :unprocessable_entity
        end
    end

    def show
        render json: @user
    end
    
    def destroy
        @user.destroy
        head :no_content
    end
    

    private

    def user_params
    params.require(:user).permit(:fullname, :email, :password, :userType)
    end

    def set_user
        @user = User.find(params[:id])
    end

end
