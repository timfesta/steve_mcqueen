class UsersController < ApplicationController

	def index  
		@users = User.all  
	end

	def new
		render :new	
	end

	def create
		@user = User.new(user_params)
		@user.save
		redirect_to @user	

	end

	def show
		user_id = params[:id]
		@user = User.find(user_id)
		render :show
	end

	def edit
		user_id = params[:id]
		@user = User.find(user_id)	
	end

	def update
		user_id = params[:id]
		@user = User.find(user_id)
		@user.update_attributes(user_params)
		render :show	
	end

	def user_params
		params.require(:user).permit(:name, :password)
	end

end
