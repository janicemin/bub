class PicturesController < ApplicationController

	def show
		@profile = current_user.profile
		@picture = @profile.picture
	end

	def new
		@picture = Picture.new
	end

	def create
		@picture = @profile.picture.build(:imageable => params[:imageable])
		if @picture.save
			flash[:notice] = "Hey there, good-looking!"
			redirect_to @profile
		else
			flash[:error] = "Unable to add a photo -- try again please!"
			redirect_to @profile
		end
	end



end