class Message < ActiveRecord::Base
	belongs_to :sender, class_name: 'Profile'
	belongs_to :recipient, class_name: 'Profile' 
	validates_presence_of :sender, :recipient, :content
end