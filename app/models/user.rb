class User < ActiveRecord::Base
 	mount_uploader :avatar, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  has_many :seminars, dependent: :destroy
	validates :first_name, presence: true
	validates :family_name, presence: true
	validates :bio, length: { maximum: 500 }

end
