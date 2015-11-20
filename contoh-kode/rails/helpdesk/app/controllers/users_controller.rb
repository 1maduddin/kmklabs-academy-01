class UsersController < ApplicationController

   def index
        @users = User.paginate(page: params[:page], per_page: 10)
   end

   def show
        @user = User.find(params[:id])
   end

   def new
        @user = User.new
   end

   def create
        u = User.new user_params
        if u.save
            flash[:notice] = "User #{u.username} sudah tersimpan"
            redirect_to action: "index"
        else
            render "new"
        end
   end

   def edit
        @user = User.find params[:id]
   end

   def update
        u = User.find params[:id]
        if u.update(user_params)
            flash[:notice] = "User #{u.username} sudah tersimpan"
            redirect_to action: "index"
        else
            render "edit"
        end
   end

   def destroy
        u = User.destroy params[:id]
            flash[:notice] = "User #{u.username} sudah terhapus"
            redirect_to action: "index"
   end

   private

    def user_params
        params.require(:user).permit(:fullname, :email, :username, :password)
    end

end
