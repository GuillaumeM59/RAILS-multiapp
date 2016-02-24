class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #has_many :posts, dependent: :destroy
   #mount_uploader :avatar, AvatarUploader

   validates_uniqueness_of :username

    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable



end
