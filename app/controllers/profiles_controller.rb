class ProfilesController < ApplicationController
	# before_action :check_profile_presence, only: [:new, :create]

	def show
		@user = current_user
		if current_user.profile
			@profile = current_user.profile
			@friends = current_profile.friends
		else
			redirect_to new_profile_path
		end
	end

	def new 

		 if current_user.profile
			redirect_to root_url
		else
			@user = current_user
			@profile = Profile.new
		end
	end

	def create
		@profile = Profile.new(profile_params)
		@profile.user_id = current_user.id
		if @profile.save
			redirect_to @profile
		else 
			render 'new'
		end
	end

	def edit
	end

	def update
	end

	def destroy 
		@profile = Profile.find(params[:id])
		@profile.destroy
		redirect_to root_url
	end

	private
		def profile_params
			params.require(:profile).permit(:name, :age, :location, :phone_number, :email)
		end

		# def check_profile_presence
		# 	if Profile.where(user_id: current_user.id).exists?
		# 	# if current_user.profile.exists?
		# 		redirect_to profile_path(current_user) 
		# 	else
		# 		redirect_to root_url
		# 	end
		# end
end