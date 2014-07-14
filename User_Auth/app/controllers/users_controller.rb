class UsersController < ApplicationController
	def new
		@user=User.new
	end
	def create
     @user=User.new(params[:user])
      if @user.save
	     flash[:notice] ="you signed up succesfully"
	     flash[:color] ="valid"
         else
	        flash[:notice]="form os invalid"
	        flash[:color]="invalid"
	    end
	    render "application"
	end
end
