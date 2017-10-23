class Member < ApplicationRecord
  # Ratyrate gem
  ratyrate_rater

  has_many :ads
  has_one :profile_member
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
