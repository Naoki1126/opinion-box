class UsersController < ApplicationController
    
    def new
        @user = User.new
    end

    def login
        @user = User.find_by(email: params[:email])
        if @user && @user.authenticate(params[:password])¥
            session[:user_id] = @user.id
            redirect_to tags_path
        else
            render("users/login_form")
        end
    end

    def login_form

    end

    def show
    end

    def edit
    end

    def update
    end
    
    def create
        @user = User.new(new_user_params)
        if @user.save
            session[:user_id] =@user.id
            redirect_to tags_path
        else 
            render("users/new")
        end

    end

    def destroy
    end

    def logout
    end

    private
    def new_user_params
        params.permit(:name, :email, :password)
    end



end
