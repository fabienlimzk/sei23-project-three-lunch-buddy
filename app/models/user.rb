class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :appointments_posted, :class_name => 'Appointment', :foreign_key => 'poster_id'
  has_many :appointments_responded, :class_name => 'Appointment', :foreign_key => 'respondent_id'
  has_one_attached :avatar

  def avatar_thumbnail
    if avatar.attached?
      avatar.variant(resize: "150x150!").processed if avatar.attached?
    else
      "default_profile.png"  
    end  
  end  
end
