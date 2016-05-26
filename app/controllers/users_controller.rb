 class UsersController < ApplicationController 
    
    def index
        @user = User.all
    end
    
    def new
        @user = User.new
    end
     
    def create
        @user = User.new(user_params)
        if @user.save
            flash[:success] = "Welcome to The RTF blog! #{@user.username}:)"
            redirect_to articles_path
        else
            render 'new' 
        end
    
    def edit
        @user = User.find(params[:id])
    end
     
    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
           flash[:success] = "Your Account Was Updated Successfuly"
                redirect_to articles_path 
        else
            render 'edit'  
        end
        
    def show
        @user = User.find(params[:id])
        @username = User.username
     end


    private
    
    def user_params 
        params.require(:user).permit(:username, :email, :password)
    end 
    end
    end  
 end