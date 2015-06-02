class User < ActiveRecord::Base
  has_one :profile, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   # has_many :posts, dependent: :destroy
   # has_many :comments
   # # has_many :friendships
   # has_many :friends, :through => :friendships
   # has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
   # has_many :inverse_friendships, :through => :inverse_friendships, :source => :user

  
end
