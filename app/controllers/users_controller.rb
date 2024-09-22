class UsersController < ApplicationController
    before_action :authenticate_user!

    def new
        case params[:user_type]
        when 'qa', 'developer', 'manager'
            @user_type = params[:user_type]
        else

        end
    end
    def create
        @user = User.new(user_params)
        if @user.save
            flash[:success] = "Successfully signed up"
            redirect_to root_path
        else
            render 'new'    
        end    
    end

    private
    def user_params
        params.require(:user).permit(:name, :email, :password, :user_type, :phone)
    end
end