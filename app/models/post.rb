class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	belongs_to :sender, :class_name => "User"
	belongs_to :receiver, :class_name => "User"

	# scope :recent, -> { limit(5).order('created_at desc')}
end