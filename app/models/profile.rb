class Profile < ActiveRecord::Base
	belongs_to :user
	has_many :friendships, dependent: :destroy #joined table 
	has_many :friends, through: :friendships 

	def possible_friends
		Profile.all - friends - [self]
	end
end