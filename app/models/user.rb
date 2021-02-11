class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :attendances, foreign_key: :attendee
  has_many :attended_events, through: :attendances, source: :event_to_attend_id

  has_many :events, dependent: :destroy
end
