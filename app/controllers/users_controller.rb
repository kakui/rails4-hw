class UsersController < ApplicationController

	def index
		@users = User.all

	end

	def show
		@user = User.find(params[:id])
	end


	def destroy
		@user = User.find(params[:id])
		if @user && @user.destroy
			flash[:notice] = "Your user was destroyed."
		else
			flash[:alert] = "Your user could not be destroyed."
		end
		redirect_to users_path
	end

end
