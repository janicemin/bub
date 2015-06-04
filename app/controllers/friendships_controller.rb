class FriendshipsController < ApplicationController

	def show
		@profile = current_user.profile
		@friend = @profile.friendships.name
	end

	def create 
		@friendship = current_profile.friendships.build(:friend_id => params[:friend_id])
		if @friendship.save
			flash[:notice] = "Added friend!"
			redirect_to current_profile
		else
			flash[:error] = "Unable to add friend."
			redirect_to @current_profile
		end
	end

	def destroy
		@friendship = current_profile.friendships.find(params[:id])
		@friendship.destroy
		flash[:notice] = "Removed friendship."
		redirect_to current_profile
	end

end